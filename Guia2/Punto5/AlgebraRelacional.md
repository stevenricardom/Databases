# 📌 Consultas en Álgebra Relacional

---

### **a) Nombre de todos los empleados que viven en la misma ciudad y en la misma calle que sus jefes**

<img width="886" height="59" alt="image" src="https://github.com/user-attachments/assets/8a6ca980-25a6-4a08-b765-ba02fec81f91" />


✅ **Explicación de símbolos**  
- `π` (pi) → **proyección**, selecciona columnas específicas (atributos).  
- `σ` (sigma) → **selección**, filtra filas según una condición.  
- `ρ` (rho) → **renombrar**, crea un alias para diferenciar la misma tabla (`empleado` como `e` y `j`).  
- `⋈` (bowtie) → **join natural/condicional**, une dos tablas según una condición.  
- `∧` → **AND lógico**, ambas condiciones deben cumplirse.  

---

### **b) Nombre de todos los empleados que no trabajan para el “Banco Mundial”**

<img width="1007" height="54" alt="image" src="https://github.com/user-attachments/assets/fbdefff8-1e87-43ee-ba4c-e3ce7f5b72ed" />

✅ **Explicación de símbolos**  
- `-` → **diferencia de conjuntos**, elimina los elementos que cumplen la condición.  
- El resto (`π`, `σ`, `⋈`) funcionan igual que en la consulta anterior.  

---

### **c) Nombre de los empleados que viven en la misma ciudad que la compañía para la que trabajan**

<img width="597" height="76" alt="image" src="https://github.com/user-attachments/assets/b5ffb24a-c6d1-4895-88bd-1b5bde0422f2" />


✅ **Explicación de símbolos**  
- `σ_{e.ciudad = em.ciudad}` → condición que compara atributos entre dos tablas.  
- `empleado ⋈ trabaja ⋈ empresa` → join encadenado de tres tablas.  

---

### **d) Nombre, calle, y ciudad de residencia de todos los empleados que trabajan para el “Banco de la ciudad”**

<img width="771" height="50" alt="image" src="https://github.com/user-attachments/assets/30453b3e-7bcd-4cc4-bdd4-aa16d07830a9" />


✅ **Explicación de símbolos**  
- `π_{e.nombre, e.calle, e.ciudad}` → devuelve solo esas tres columnas.  
- `σ_{em.nombre = 'Banco de la ciudad'}` → filtra los empleados según el nombre de la empresa.  
