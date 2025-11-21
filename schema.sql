CREATE TABLE icd_codes (
    record_id INT PRIMARY KEY,
    icd_code VARCHAR(20) NOT NULL,
    icd_code_full VARCHAR(20),
    description TEXT,
    additional_code1 VARCHAR(20),
    additional_code2 VARCHAR(20),
    additional_description TEXT,
    severity_level INT,
    is_chronic BOOLEAN DEFAULT FALSE,
    is_infectious BOOLEAN DEFAULT FALSE,
    is_contagious BOOLEAN DEFAULT FALSE,
    requires_isolation BOOLEAN DEFAULT FALSE,
    is_reportable BOOLEAN DEFAULT FALSE,
    country VARCHAR(10),
    full_text_search TEXT,
    created_at DATETIME
);

CREATE INDEX idx_icd_code ON icd_codes(icd_code);
CREATE INDEX idx_icd_code_short ON icd_codes(icd_code_short);
CREATE INDEX idx_severity ON icd_codes(severity_level);
CREATE INDEX idx_country ON icd_codes(country);