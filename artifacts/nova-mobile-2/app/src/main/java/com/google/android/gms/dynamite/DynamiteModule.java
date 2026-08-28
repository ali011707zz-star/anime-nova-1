package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import dalvik.system.DelegateLastClassLoader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
@KeepForSdk
/* loaded from: classes.dex */
public final class DynamiteModule {

    @GuardedBy("DynamiteModule.class")
    private static Boolean zzb = null;

    @GuardedBy("DynamiteModule.class")
    private static String zzc = null;

    @GuardedBy("DynamiteModule.class")
    private static int zzd = -1;

    @GuardedBy("DynamiteModule.class")
    private static zzo zzi;

    @GuardedBy("DynamiteModule.class")
    private static zzp zzj;
    private final Context zzh;
    private static final ThreadLocal<zzk> zze = new ThreadLocal<>();
    private static final ThreadLocal<Long> zzf = new zzb();
    private static final zzm zzg = new zzc();

    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new zzd();

    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new zze();

    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzf();

    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzg();

    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzh();

    @RecentlyNonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzi();

    @RecentlyNonNull
    public static final VersionPolicy zza = new zzj();

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    @DynamiteApi
    /* loaded from: classes.dex */
    public static class DynamiteLoaderClassLoader {

        @RecentlyNullable
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class LoadingException extends Exception {
        public /* synthetic */ LoadingException(String str, zzb zzbVar) {
            super(str);
        }

        public /* synthetic */ LoadingException(String str, Throwable th, zzb zzbVar) {
            super(str, th);
        }
    }

    /* compiled from: com.google.android.gms:play-services-basement@@17.6.0 */
    /* loaded from: classes.dex */
    public interface VersionPolicy {
        zzn zza(Context context, String str, zzm zzmVar) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzh = context;
    }

    @KeepForSdk
    public static int getLocalVersion(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 61);
            sb2.append("com.google.android.gms.dynamite.descriptors.");
            sb2.append(str);
            sb2.append(".");
            sb2.append("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb2.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (!Objects.equal(declaredField.get(null), str)) {
                String valueOf = String.valueOf(declaredField.get(null));
                StringBuilder sb3 = new StringBuilder(valueOf.length() + 51 + String.valueOf(str).length());
                sb3.append("Module descriptor id '");
                sb3.append(valueOf);
                sb3.append("' didn't match expected id '");
                sb3.append(str);
                sb3.append("'");
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 45);
            sb4.append("Local module descriptor class for ");
            sb4.append(str);
            sb4.append(" not found.");
            return 0;
        } catch (Exception e10) {
            String valueOf2 = String.valueOf(e10.getMessage());
            if (valueOf2.length() != 0) {
                "Failed to load module descriptor class: ".concat(valueOf2);
            }
            return 0;
        }
    }

    @KeepForSdk
    public static int getRemoteVersion(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
        return zza(context, str, false);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static DynamiteModule load(@RecentlyNonNull Context context, @RecentlyNonNull VersionPolicy versionPolicy, @RecentlyNonNull String str) throws LoadingException {
        Boolean bool;
        IObjectWrapper zze2;
        DynamiteModule dynamiteModule;
        zzp zzpVar;
        Boolean valueOf;
        IObjectWrapper zze3;
        ThreadLocal<zzk> threadLocal = zze;
        zzk zzkVar = threadLocal.get();
        zzk zzkVar2 = new zzk(null);
        threadLocal.set(zzkVar2);
        ThreadLocal<Long> threadLocal2 = zzf;
        long longValue = threadLocal2.get().longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            zzn zza2 = versionPolicy.zza(context, str, zzg);
            int i10 = zza2.zza;
            int i11 = zza2.zzb;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length());
            sb2.append("Considering local module ");
            sb2.append(str);
            sb2.append(":");
            sb2.append(i10);
            sb2.append(" and remote module ");
            sb2.append(str);
            sb2.append(":");
            sb2.append(i11);
            int i12 = zza2.zzc;
            if (i12 == 0 || ((i12 == -1 && zza2.zza == 0) || (i12 == 1 && zza2.zzb == 0))) {
                int i13 = zza2.zza;
                int i14 = zza2.zzb;
                StringBuilder sb3 = new StringBuilder(91);
                sb3.append("No acceptable module found. Local version is ");
                sb3.append(i13);
                sb3.append(" and remote version is ");
                sb3.append(i14);
                sb3.append(".");
                throw new LoadingException(sb3.toString(), null);
            }
            if (i12 == -1) {
                DynamiteModule zzd2 = zzd(context, str);
                if (longValue == 0) {
                    threadLocal2.remove();
                } else {
                    threadLocal2.set(Long.valueOf(longValue));
                }
                Cursor cursor = zzkVar2.zza;
                if (cursor != null) {
                    cursor.close();
                }
                threadLocal.set(zzkVar);
                return zzd2;
            }
            if (i12 == 1) {
                try {
                    int i15 = zza2.zzb;
                    try {
                        synchronized (DynamiteModule.class) {
                            bool = zzb;
                        }
                        if (bool != null) {
                            if (bool.booleanValue()) {
                                StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 51);
                                sb4.append("Selected remote version of ");
                                sb4.append(str);
                                sb4.append(", version >= ");
                                sb4.append(i15);
                                synchronized (DynamiteModule.class) {
                                    zzpVar = zzj;
                                }
                                if (zzpVar != null) {
                                    zzk zzkVar3 = threadLocal.get();
                                    if (zzkVar3 != null && zzkVar3.zza != null) {
                                        Context applicationContext = context.getApplicationContext();
                                        Cursor cursor2 = zzkVar3.zza;
                                        ObjectWrapper.wrap(null);
                                        synchronized (DynamiteModule.class) {
                                            valueOf = Boolean.valueOf(zzd >= 2);
                                        }
                                        if (valueOf.booleanValue()) {
                                            zze3 = zzpVar.zzf(ObjectWrapper.wrap(applicationContext), str, i15, ObjectWrapper.wrap(cursor2));
                                        } else {
                                            zze3 = zzpVar.zze(ObjectWrapper.wrap(applicationContext), str, i15, ObjectWrapper.wrap(cursor2));
                                        }
                                        Context context2 = (Context) ObjectWrapper.unwrap(zze3);
                                        if (context2 != null) {
                                            dynamiteModule = new DynamiteModule(context2);
                                        } else {
                                            throw new LoadingException("Failed to get module context", null);
                                        }
                                    } else {
                                        throw new LoadingException("No result cursor", null);
                                    }
                                } else {
                                    throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                }
                            } else {
                                StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 51);
                                sb5.append("Selected remote version of ");
                                sb5.append(str);
                                sb5.append(", version >= ");
                                sb5.append(i15);
                                zzo zzf2 = zzf(context);
                                if (zzf2 != null) {
                                    int zzi2 = zzf2.zzi();
                                    if (zzi2 >= 3) {
                                        zzk zzkVar4 = threadLocal.get();
                                        if (zzkVar4 != null) {
                                            zze2 = zzf2.zzk(ObjectWrapper.wrap(context), str, i15, ObjectWrapper.wrap(zzkVar4.zza));
                                        } else {
                                            throw new LoadingException("No cached result cursor holder", null);
                                        }
                                    } else if (zzi2 == 2) {
                                        zze2 = zzf2.zzg(ObjectWrapper.wrap(context), str, i15);
                                    } else {
                                        zze2 = zzf2.zze(ObjectWrapper.wrap(context), str, i15);
                                    }
                                    if (ObjectWrapper.unwrap(zze2) != null) {
                                        dynamiteModule = new DynamiteModule((Context) ObjectWrapper.unwrap(zze2));
                                    } else {
                                        throw new LoadingException("Failed to load remote module.", null);
                                    }
                                } else {
                                    throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                }
                            }
                            if (longValue == 0) {
                                threadLocal2.remove();
                            } else {
                                threadLocal2.set(Long.valueOf(longValue));
                            }
                            Cursor cursor3 = zzkVar2.zza;
                            if (cursor3 != null) {
                                cursor3.close();
                            }
                            threadLocal.set(zzkVar);
                            return dynamiteModule;
                        }
                        throw new LoadingException("Failed to determine which loading route to use.", null);
                    } catch (RemoteException e10) {
                        throw new LoadingException("Failed to load remote module.", e10, null);
                    } catch (LoadingException e11) {
                        throw e11;
                    } catch (Throwable th) {
                        CrashUtils.addDynamiteErrorToDropBox(context, th);
                        throw new LoadingException("Failed to load remote module.", th, null);
                    }
                } catch (LoadingException e12) {
                    String valueOf2 = String.valueOf(e12.getMessage());
                    if (valueOf2.length() != 0) {
                        "Failed to load remote module: ".concat(valueOf2);
                    }
                    int i16 = zza2.zza;
                    if (i16 != 0 && versionPolicy.zza(context, str, new zzl(i16, 0)).zzc == -1) {
                        DynamiteModule zzd3 = zzd(context, str);
                        if (longValue == 0) {
                            zzf.remove();
                        } else {
                            zzf.set(Long.valueOf(longValue));
                        }
                        Cursor cursor4 = zzkVar2.zza;
                        if (cursor4 != null) {
                            cursor4.close();
                        }
                        zze.set(zzkVar);
                        return zzd3;
                    }
                    throw new LoadingException("Remote load failed. No local fallback found.", e12, null);
                }
            }
            StringBuilder sb6 = new StringBuilder(47);
            sb6.append("VersionPolicy returned invalid code:");
            sb6.append(0);
            throw new LoadingException(sb6.toString(), null);
        } catch (Throwable th2) {
            if (longValue == 0) {
                zzf.remove();
            } else {
                zzf.set(Long.valueOf(longValue));
            }
            Cursor cursor5 = zzkVar2.zza;
            if (cursor5 != null) {
                cursor5.close();
            }
            zze.set(zzkVar);
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0126, code lost:
    
        if (zzc(r10) != false) goto L77;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(@RecentlyNonNull Context context, @RecentlyNonNull String str, boolean z10) {
        Field declaredField;
        ClassLoader zzaVar;
        Throwable th;
        RemoteException e10;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzb;
                Cursor cursor = null;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e11) {
                        String valueOf = String.valueOf(e11);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 30);
                        sb2.append("Failed to load module via V2: ");
                        sb2.append(valueOf);
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader != null) {
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else {
                                try {
                                    zze(classLoader);
                                } catch (LoadingException unused) {
                                }
                                bool = Boolean.TRUE;
                            }
                        } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        } else {
                            try {
                                int zzb2 = zzb(context, str, z10);
                                String str2 = zzc;
                                if (str2 != null && !str2.isEmpty()) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        String str3 = zzc;
                                        Preconditions.checkNotNull(str3);
                                        zzaVar = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                    } else {
                                        String str4 = zzc;
                                        Preconditions.checkNotNull(str4);
                                        zzaVar = new zza(str4, ClassLoader.getSystemClassLoader());
                                    }
                                    zze(zzaVar);
                                    declaredField.set(null, zzaVar);
                                    zzb = Boolean.TRUE;
                                    return zzb2;
                                }
                                return zzb2;
                            } catch (LoadingException unused2) {
                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                bool = Boolean.FALSE;
                            }
                        }
                        zzb = bool;
                    }
                }
                boolean booleanValue = bool.booleanValue();
                int i10 = 0;
                if (booleanValue) {
                    try {
                        return zzb(context, str, z10);
                    } catch (LoadingException e12) {
                        String valueOf2 = String.valueOf(e12.getMessage());
                        if (valueOf2.length() != 0) {
                            "Failed to retrieve remote module version: ".concat(valueOf2);
                        }
                        return 0;
                    }
                }
                zzo zzf2 = zzf(context);
                try {
                    if (zzf2 != null) {
                        try {
                            int zzi2 = zzf2.zzi();
                            if (zzi2 >= 3) {
                                Cursor cursor2 = (Cursor) ObjectWrapper.unwrap(zzf2.zzj(ObjectWrapper.wrap(context), str, z10, zzf.get().longValue()));
                                if (cursor2 != null) {
                                    try {
                                        if (cursor2.moveToFirst()) {
                                            int i11 = cursor2.getInt(0);
                                            if (i11 > 0) {
                                            }
                                            cursor = cursor2;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            i10 = i11;
                                        }
                                    } catch (RemoteException e13) {
                                        e10 = e13;
                                        cursor = cursor2;
                                        String valueOf3 = String.valueOf(e10.getMessage());
                                        if (valueOf3.length() != 0) {
                                            "Failed to retrieve remote module version: ".concat(valueOf3);
                                        }
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        return i10;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        cursor = cursor2;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                }
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                            } else if (zzi2 == 2) {
                                i10 = zzf2.zzh(ObjectWrapper.wrap(context), str, z10);
                            } else {
                                i10 = zzf2.zzf(ObjectWrapper.wrap(context), str, z10);
                            }
                        } catch (RemoteException e14) {
                            e10 = e14;
                        }
                    }
                    return i10;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            CrashUtils.addDynamiteErrorToDropBox(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
    
        if (zzc(r9) != false) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a2  */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.dynamite.zzb] */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int zzb(Context context, String str, boolean z10) throws LoadingException {
        Throwable th;
        Exception e10;
        ?? r02 = 0;
        Cursor cursor = null;
        try {
            try {
                Cursor query = context.getContentResolver().query(new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").path(true != z10 ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartTime", String.valueOf(zzf.get().longValue())).build(), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            int i10 = query.getInt(0);
                            if (i10 > 0) {
                                synchronized (DynamiteModule.class) {
                                    zzc = query.getString(2);
                                    int columnIndex = query.getColumnIndex("loaderVersion");
                                    if (columnIndex >= 0) {
                                        zzd = query.getInt(columnIndex);
                                    }
                                }
                            }
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            return i10;
                        }
                    } catch (Exception e11) {
                        e10 = e11;
                        if (e10 instanceof LoadingException) {
                            throw e10;
                        }
                        throw new LoadingException("V2 version check failed", e10, r02);
                    }
                }
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.", r02);
            } catch (Throwable th2) {
                th = th2;
                r02 = context;
                if (r02 != 0) {
                    r02.close();
                }
                throw th;
            }
        } catch (Exception e12) {
            e10 = e12;
        } catch (Throwable th3) {
            th = th3;
            if (r02 != 0) {
            }
            throw th;
        }
    }

    private static boolean zzc(Cursor cursor) {
        zzk zzkVar = zze.get();
        if (zzkVar == null || zzkVar.zza != null) {
            return false;
        }
        zzkVar.zza = cursor;
        return true;
    }

    private static DynamiteModule zzd(Context context, String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Selected local version of ".concat(valueOf);
        }
        return new DynamiteModule(context.getApplicationContext());
    }

    @GuardedBy("DynamiteModule.class")
    private static void zze(ClassLoader classLoader) throws LoadingException {
        zzp zzpVar;
        zzb zzbVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzpVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof zzp) {
                    zzpVar = (zzp) queryLocalInterface;
                } else {
                    zzpVar = new zzp(iBinder);
                }
            }
            zzj = zzpVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            throw new LoadingException("Failed to instantiate dynamite loader", e10, zzbVar);
        }
    }

    private static zzo zzf(Context context) {
        zzo zzoVar;
        synchronized (DynamiteModule.class) {
            zzo zzoVar2 = zzi;
            if (zzoVar2 != null) {
                return zzoVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzoVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    if (queryLocalInterface instanceof zzo) {
                        zzoVar = (zzo) queryLocalInterface;
                    } else {
                        zzoVar = new zzo(iBinder);
                    }
                }
                if (zzoVar != null) {
                    zzi = zzoVar;
                    return zzoVar;
                }
            } catch (Exception e10) {
                String valueOf = String.valueOf(e10.getMessage());
                if (valueOf.length() != 0) {
                    "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf);
                }
            }
            return null;
        }
    }

    @RecentlyNonNull
    @KeepForSdk
    public Context getModuleContext() {
        return this.zzh;
    }

    @RecentlyNonNull
    @KeepForSdk
    public IBinder instantiate(@RecentlyNonNull String str) throws LoadingException {
        try {
            return (IBinder) this.zzh.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e10) {
            String valueOf = String.valueOf(str);
            throw new LoadingException(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e10, null);
        }
    }
}
