import React, { useState } from 'react';

export default function SymptomForm({ onSubmit }) {
  const [symptom, setSymptom] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    onSubmit(symptom);
  };

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="text"
        placeholder="Enter symptom"
        value={symptom}
        onChange={(e) => setSymptom(e.target.value)}
      />
      <button type="submit">Predict</button>
    </form>
  );
}
