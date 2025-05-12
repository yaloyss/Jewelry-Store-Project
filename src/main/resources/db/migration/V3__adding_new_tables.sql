CREATE TABLE position
(
    positionId INT AUTO_INCREMENT PRIMARY KEY,
    positionName VARCHAR(100) NOT NULL
);

CREATE TABLE bill
(
    billId INT AUTO_INCREMENT PRIMARY KEY,
    billDate DATE NOT NULL,
    productId INT,
    employeeId INT,
    clientId INT,
    CONSTRAINT fkBillProduct FOREIGN KEY (productId) REFERENCES product(id),
    CONSTRAINT fkBillEmployee FOREIGN KEY (employeeId) REFERENCES employee(id),
    CONSTRAINT fkBillClient FOREIGN KEY (clientId) REFERENCES client(id)
);
