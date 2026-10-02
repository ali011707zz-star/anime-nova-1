package n8;

import android.annotation.SuppressLint;
import android.os.Build;
import n8.b;

/* compiled from: SystemLibraryLoader.java */
/* loaded from: classes.dex */
public final class d implements b.InterfaceC0276b {
    @Override // n8.b.InterfaceC0276b
    public String a(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }

    @Override // n8.b.InterfaceC0276b
    public String b(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // n8.b.InterfaceC0276b
    public void c(String str) {
        System.loadLibrary(str);
    }

    @Override // n8.b.InterfaceC0276b
    public String[] d() {
        if (Build.VERSION.SDK_INT >= 21) {
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr.length > 0) {
                return strArr;
            }
        }
        String str = Build.CPU_ABI2;
        return !e.a(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override // n8.b.InterfaceC0276b
    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    public void e(String str) {
        System.load(str);
    }
}
