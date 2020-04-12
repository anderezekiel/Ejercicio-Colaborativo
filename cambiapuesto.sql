-- Procedimiento para cambiar el puesto al empleado
create or replace procedure cambiapuesto(numEmp number, puestoEmp varchar2) is
BEGIN
    update empleado set puesto = puestoEmp where num_emp = numEmp;
END;
/