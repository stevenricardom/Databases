# 📌 Consultas en Álgebra Relacional (Eventos y Conferencias)

---

### **a) Nombre y tipo de los salones donde se llevan a cabo eventos**

<img width="523" height="49" alt="image" src="https://github.com/user-attachments/assets/e6765326-6974-4c75-8445-612ce00e912e" />


✅ **Explicación de símbolos**  
- `π_{s.salonNombre, s.salonTipo}` → proyecta solo esas columnas.  
- `⋈` → join entre `SalonesEventos` y `Eventos`.  
- Esto devuelve únicamente los salones que efectivamente tienen eventos.  

---

### **b) Nombre de las conferencias y duración, con duración de dos (2) horas o más**

<img width="745" height="52" alt="image" src="https://github.com/user-attachments/assets/a3bcc996-20e0-47b8-9571-e65f022043ff" />


✅ **Explicación**  
- `σ_{c.conferenciaDuracion ≥ 2}` → filtra solo las conferencias de 2 horas o más.  
- `π` → proyecta nombre y duración.  

---

### **c) Nombre de la conferencia con su respectivo conferencista (nombre y apellido)**

<img width="1069" height="45" alt="image" src="https://github.com/user-attachments/assets/3617dfdc-128b-4b48-8fab-6c6b7491c648" />


✅ **Explicación**  
- `⋈_{c.conferecistaId = pc.conferecistaId}` → join entre la conferencia y el conferencista correspondiente.  
- `π` → muestra nombre de la conferencia y datos del conferencista.  

---

### **d) Nombre de las conferencias con duración de 1 hora y el nombre del conferencista es “Erika”**

<img width="1151" height="59" alt="image" src="https://github.com/user-attachments/assets/3e509fc5-ab78-4e7b-871d-68d8b2188e07" />


✅ **Explicación**  
- `σ_{c.conferenciaDuracion = 1 ∧ pc.conferencistaNombre = 'Erika'}` → filtra conferencias de 1 hora con conferencista “Erika”.  
- `π` → proyecta solo los atributos solicitados.  
