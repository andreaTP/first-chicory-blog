package org.acme;

import com.dylibso.chicory.runtime.Module;
import com.dylibso.chicory.wasm.types.Value;
import java.io.InputStream;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class WasmService {

    private Module module;

    public void setModule(InputStream module) {
        this.module = Module.build(module);
    }

    public int compute(int content) {
        if (this.module == null) {
            throw new IllegalArgumentException("The WASM program have not been set, please do it!");
        }

        var instance = module.instantiate();
        var exportedFunction = instance.getExport("exported_function");
        var result = exportedFunction.apply(Value.i32(content));

        return result[0].asInt();
    }
}