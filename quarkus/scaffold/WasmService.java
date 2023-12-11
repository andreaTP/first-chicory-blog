package org.acme;

import com.dylibso.chicory.runtime.Module;
import java.io.InputStream;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class WasmService {

    private Module module;

    public void setModule(InputStream module) {
        this.module = Module.build(module);
    }

    public int compute(int content) {
        return 42;
    }
}