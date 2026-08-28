package j1;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;
import org.apache.http.cookie.ClientCookie;

/* compiled from: MultiDex.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Set<File> f8052a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f8053b = m(System.getProperty("java.vm.version"));

    /* compiled from: MultiDex.java */
    /* renamed from: j1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0159a {

        /* renamed from: b, reason: collision with root package name */
        public static final int f8054b = 4;

        /* renamed from: a, reason: collision with root package name */
        public final InterfaceC0160a f8055a;

        /* compiled from: MultiDex.java */
        /* renamed from: j1.a$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public interface InterfaceC0160a {
            Object a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException;
        }

        /* compiled from: MultiDex.java */
        /* renamed from: j1.a$a$b */
        /* loaded from: classes.dex */
        public static class b implements InterfaceC0160a {

            /* renamed from: a, reason: collision with root package name */
            public final Constructor<?> f8056a;

            public b(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
                this.f8056a = constructor;
                constructor.setAccessible(true);
            }

            @Override // j1.a.C0159a.InterfaceC0160a
            public Object a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException, IOException {
                return this.f8056a.newInstance(file, new ZipFile(file), dexFile);
            }
        }

        /* compiled from: MultiDex.java */
        /* renamed from: j1.a$a$c */
        /* loaded from: classes.dex */
        public static class c implements InterfaceC0160a {

            /* renamed from: a, reason: collision with root package name */
            public final Constructor<?> f8057a;

            public c(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, File.class, DexFile.class);
                this.f8057a = constructor;
                constructor.setAccessible(true);
            }

            @Override // j1.a.C0159a.InterfaceC0160a
            public Object a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f8057a.newInstance(file, file, dexFile);
            }
        }

        /* compiled from: MultiDex.java */
        /* renamed from: j1.a$a$d */
        /* loaded from: classes.dex */
        public static class d implements InterfaceC0160a {

            /* renamed from: a, reason: collision with root package name */
            public final Constructor<?> f8058a;

            public d(Class<?> cls) throws SecurityException, NoSuchMethodException {
                Constructor<?> constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
                this.f8058a = constructor;
                constructor.setAccessible(true);
            }

            @Override // j1.a.C0159a.InterfaceC0160a
            public Object a(File file, DexFile dexFile) throws IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
                return this.f8058a.newInstance(file, Boolean.FALSE, file, dexFile);
            }
        }

        public C0159a() throws ClassNotFoundException, SecurityException, NoSuchMethodException {
            InterfaceC0160a dVar;
            Class<?> cls = Class.forName("dalvik.system.DexPathList$Element");
            try {
                try {
                    dVar = new b(cls);
                } catch (NoSuchMethodException unused) {
                    dVar = new c(cls);
                }
            } catch (NoSuchMethodException unused2) {
                dVar = new d(cls);
            }
            this.f8055a = dVar;
        }

        public static void a(ClassLoader classLoader, List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, ClassNotFoundException, NoSuchMethodException, InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchFieldException {
            Object obj = a.g(classLoader, "pathList").get(classLoader);
            Object[] b10 = new C0159a().b(list);
            try {
                a.f(obj, "dexElements", b10);
            } catch (NoSuchFieldException unused) {
                a.f(obj, "pathElements", b10);
            }
        }

        public static String c(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f8054b) + ".dex").getPath();
        }

        public final Object[] b(List<? extends File> list) throws IOException, SecurityException, IllegalArgumentException, InstantiationException, IllegalAccessException, InvocationTargetException {
            int size = list.size();
            Object[] objArr = new Object[size];
            for (int i10 = 0; i10 < size; i10++) {
                File file = list.get(i10);
                objArr[i10] = this.f8055a.a(file, DexFile.loadDex(file.getPath(), c(file), 0));
            }
            return objArr;
        }
    }

    /* compiled from: MultiDex.java */
    /* loaded from: classes.dex */
    public static final class b {
        public static void a(ClassLoader classLoader, List<? extends File> list, File file) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException {
            IOException[] iOExceptionArr;
            Object obj = a.g(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            a.f(obj, "dexElements", b(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                }
                Field g10 = a.g(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) g10.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                g10.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        public static Object[] b(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
            return (Object[]) a.h(obj, "makeDexElements", ArrayList.class, File.class, ArrayList.class).invoke(obj, arrayList, file, arrayList2);
        }
    }

    /* compiled from: MultiDex.java */
    /* loaded from: classes.dex */
    public static final class c {
        public static void a(ClassLoader classLoader, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, IOException {
            int size = list.size();
            Field g10 = a.g(classLoader, ClientCookie.PATH_ATTR);
            StringBuilder sb2 = new StringBuilder((String) g10.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File next = listIterator.next();
                String absolutePath = next.getAbsolutePath();
                sb2.append(':');
                sb2.append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = next;
                zipFileArr[previousIndex] = new ZipFile(next);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            g10.set(classLoader, sb2.toString());
            a.f(classLoader, "mPaths", strArr);
            a.f(classLoader, "mFiles", fileArr);
            a.f(classLoader, "mZips", zipFileArr);
            a.f(classLoader, "mDexs", dexFileArr);
        }
    }

    public static void d(Context context) throws Exception {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Clearing old secondary dex dir (");
            sb2.append(file.getPath());
            sb2.append(").");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Failed to list secondary dex dir content (");
                sb3.append(file.getPath());
                sb3.append(").");
                return;
            }
            for (File file2 : listFiles) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("Trying to delete old file ");
                sb4.append(file2.getPath());
                sb4.append(" of size ");
                sb4.append(file2.length());
                if (!file2.delete()) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Failed to delete old file ");
                    sb5.append(file2.getPath());
                } else {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Deleted old file ");
                    sb6.append(file2.getPath());
                }
            }
            if (!file.delete()) {
                StringBuilder sb7 = new StringBuilder();
                sb7.append("Failed to delete secondary dex dir ");
                sb7.append(file.getPath());
            } else {
                StringBuilder sb8 = new StringBuilder();
                sb8.append("Deleted old secondary dex dir ");
                sb8.append(file.getPath());
            }
        }
    }

    public static void e(Context context, File file, File file2, String str, String str2, boolean z10) throws IOException, IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, SecurityException, ClassNotFoundException, InstantiationException {
        Set<File> set = f8052a;
        synchronized (set) {
            if (set.contains(file)) {
                return;
            }
            set.add(file);
            int i10 = Build.VERSION.SDK_INT;
            if (i10 > 20) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("MultiDex is not guaranteed to work in SDK version ");
                sb2.append(i10);
                sb2.append(": SDK version higher than ");
                sb2.append(20);
                sb2.append(" should be backed by ");
                sb2.append("runtime with built-in multidex capabilty but it's not the ");
                sb2.append("case here: java.vm.version=\"");
                sb2.append(System.getProperty("java.vm.version"));
                sb2.append("\"");
            }
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (classLoader == null) {
                    return;
                }
                try {
                    d(context);
                } catch (Throwable unused) {
                }
                File j10 = j(context, file2, str);
                j1.c cVar = new j1.c(file, j10);
                IOException e10 = null;
                try {
                    try {
                        l(classLoader, j10, cVar.G(context, str2, false));
                    } catch (IOException e11) {
                        if (z10) {
                            l(classLoader, j10, cVar.G(context, str2, true));
                        } else {
                            throw e11;
                        }
                    }
                    try {
                    } catch (IOException e12) {
                        e10 = e12;
                    }
                    if (e10 != null) {
                        throw e10;
                    }
                } finally {
                    try {
                        cVar.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (RuntimeException unused3) {
            }
        }
    }

    public static void f(Object obj, String str, Object[] objArr) throws NoSuchFieldException, IllegalArgumentException, IllegalAccessException {
        Field g10 = g(obj, str);
        Object[] objArr2 = (Object[]) g10.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        g10.set(obj, objArr3);
    }

    public static Field g(Object obj, String str) throws NoSuchFieldException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    public static Method h(Object obj, String str, Class<?>... clsArr) throws NoSuchMethodException {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    public static ApplicationInfo i(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException unused) {
            return null;
        }
    }

    public static File j(Context context, File file, String str) throws IOException {
        File file2 = new File(file, "code_cache");
        try {
            n(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), "code_cache");
            n(file2);
        }
        File file3 = new File(file2, str);
        n(file3);
        return file3;
    }

    public static void k(Context context) {
        if (f8053b) {
            return;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 4) {
            try {
                ApplicationInfo i11 = i(context);
                if (i11 == null) {
                    return;
                }
                e(context, new File(i11.sourceDir), new File(i11.dataDir), "secondary-dexes", "", true);
                return;
            } catch (Exception e10) {
                throw new RuntimeException("MultiDex installation failed (" + e10.getMessage() + ").");
            }
        }
        throw new RuntimeException("MultiDex installation failed. SDK " + i10 + " is unsupported. Min SDK version is 4.");
    }

    public static void l(ClassLoader classLoader, File file, List<? extends File> list) throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, InvocationTargetException, NoSuchMethodException, IOException, SecurityException, ClassNotFoundException, InstantiationException {
        if (list.isEmpty()) {
            return;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 19) {
            b.a(classLoader, list, file);
        } else if (i10 >= 14) {
            C0159a.a(classLoader, list);
        } else {
            c.a(classLoader, list);
        }
    }

    public static boolean m(String str) {
        boolean z10 = false;
        if (str != null) {
            Matcher matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(str);
            if (matcher.matches()) {
                try {
                    int parseInt = Integer.parseInt(matcher.group(1));
                    int parseInt2 = Integer.parseInt(matcher.group(2));
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z10 = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("VM with version ");
        sb2.append(str);
        sb2.append(z10 ? " has multidex support" : " does not have multidex support");
        return z10;
    }

    public static void n(File file) throws IOException {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to create dir ");
            sb2.append(file.getPath());
            sb2.append(". Parent file is null.");
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Failed to create dir ");
            sb3.append(file.getPath());
            sb3.append(". parent file is a dir ");
            sb3.append(parentFile.isDirectory());
            sb3.append(", a file ");
            sb3.append(parentFile.isFile());
            sb3.append(", exists ");
            sb3.append(parentFile.exists());
            sb3.append(", readable ");
            sb3.append(parentFile.canRead());
            sb3.append(", writable ");
            sb3.append(parentFile.canWrite());
        }
        throw new IOException("Failed to create directory " + file.getPath());
    }
}
