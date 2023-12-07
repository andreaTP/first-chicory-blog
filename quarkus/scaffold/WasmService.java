package org.acme;

import java.io.InputStream;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class WasmService {

    private Module module;

    public void setModule(InputStream module) {
        this.module = Module.build(module);
    }

    public String compute(String content) {
        return "TODO";
    }
}