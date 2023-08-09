import { createSlice, createAsyncThunk } from '@reduxjs/toolkit';

const initialState = {
  message: '',
  isLoading: false,
};

export const fetchGreeting = createAsyncThunk('greeting/fetchGreeting', async () => {
  try {
    const response = await fetch('/api/v1/greetings');
    const data = await response.json();
    // console.log(data);
    return data;
  } catch (error) {
    return error.message;
  }
});

const greetingSlice = createSlice({
  name: 'greeting',
  initialState,

  extraReducers: (builder) => {
    builder
      .addCase(fetchGreeting.pending, (state) => ({
        ...state,
        isLoading: true,
      }))
      .addCase(fetchGreeting.fulfilled, (state, action) => ({ // Corrected 'fullfilled' to 'fulfilled'
        ...state,
        isLoading: false,
        message: action.payload.message,
      }))
      .addCase(fetchGreeting.rejected, (state) => ({
        ...state,
        isLoading: false,
      }));
  },
});

export default greetingSlice.reducer;
