package com.anslayer.data.profile;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import android.os.PowerManager;
import cc.k;
import com.anslayer.api.endpoint.UserEndpoint;
import ic.p;
import java.io.File;
import jc.g;
import jc.l;
import jc.m;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import rc.b1;
import rc.g1;
import rc.i;
import rc.q0;
import uc.c0;
import uc.u;
import vb.f;

/* compiled from: UpdateProfileService.kt */
/* loaded from: classes.dex */
public final class UpdateProfileService extends Service {

    /* renamed from: k, reason: collision with root package name */
    public static final a f4088k = new a(null);

    /* renamed from: l, reason: collision with root package name */
    public static final u<w4.e> f4089l = c0.a(w4.e.Companion.a());

    /* renamed from: f, reason: collision with root package name */
    public PowerManager.WakeLock f4090f;

    /* renamed from: g, reason: collision with root package name */
    public g4.a f4091g;

    /* renamed from: h, reason: collision with root package name */
    public UserEndpoint f4092h;

    /* renamed from: i, reason: collision with root package name */
    public final vb.e f4093i = f.a(c.f4104f);

    /* renamed from: j, reason: collision with root package name */
    public final MediaType f4094j = MediaType.parse("image/*");

    /* compiled from: UpdateProfileService.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final u<w4.e> a() {
            return UpdateProfileService.f4089l;
        }

        public final boolean b(Context context) {
            return k7.b.k(context, UpdateProfileService.class);
        }

        public final void c(Context context, String str, Uri uri, Uri uri2, String str2, String str3, String str4, String str5) {
            l.f(context, "context");
            if (b(context)) {
                return;
            }
            Intent intent = new Intent(context, (Class<?>) UpdateProfileService.class);
            intent.putExtra("com.anslayer.UpdateProfileService.PROFILE_FULL_NAME", str);
            intent.putExtra("com.anslayer.UpdateProfileService.PROFILE_AVATAR", uri);
            intent.putExtra("com.anslayer.UpdateProfileService.PROFILE_COVER", uri2);
            intent.putExtra("com.anslayer.UpdateProfileService.PROFILE_USER_HANDLE", str2);
            intent.putExtra("com.anslayer.UpdateProfileService.PROFILE_BIO", str3);
            intent.putExtra("com.anslayer.UpdateProfileService.PROFILE_LOCATION", str4);
            intent.putExtra("com.anslayer.UpdateProfileService.PROFILE_BIRTHDATE", str5);
            f0.a.o(context, intent);
        }
    }

    /* compiled from: UpdateProfileService.kt */
    @cc.f(c = "com.anslayer.data.profile.UpdateProfileService$onStartCommand$1", f = "UpdateProfileService.kt", l = {74}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class b extends k implements p<q0, ac.d<? super vb.p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4095f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f4097h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ Uri f4098i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ Uri f4099j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ String f4100k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ String f4101l;

        /* renamed from: m, reason: collision with root package name */
        public final /* synthetic */ String f4102m;

        /* renamed from: n, reason: collision with root package name */
        public final /* synthetic */ String f4103n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Uri uri, Uri uri2, String str2, String str3, String str4, String str5, ac.d<? super b> dVar) {
            super(2, dVar);
            this.f4097h = str;
            this.f4098i = uri;
            this.f4099j = uri2;
            this.f4100k = str2;
            this.f4101l = str3;
            this.f4102m = str4;
            this.f4103n = str5;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new b(this.f4097h, this.f4098i, this.f4099j, this.f4100k, this.f4101l, this.f4102m, this.f4103n, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super vb.p> dVar) {
            return ((b) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f4095f;
            if (i10 == 0) {
                vb.k.b(obj);
                UpdateProfileService updateProfileService = UpdateProfileService.this;
                String str = this.f4097h;
                Uri uri = this.f4098i;
                Uri uri2 = this.f4099j;
                String str2 = this.f4100k;
                String str3 = this.f4101l;
                String str4 = this.f4102m;
                String str5 = this.f4103n;
                this.f4095f = 1;
                if (updateProfileService.g(str, uri, uri2, str2, str3, str4, str5, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return vb.p.f15031a;
        }
    }

    /* compiled from: Injekt.kt */
    /* loaded from: classes.dex */
    public static final class c extends m implements ic.a<f4.d> {

        /* renamed from: f, reason: collision with root package name */
        public static final c f4104f = new c();

        /* compiled from: TypeInfo.kt */
        /* loaded from: classes.dex */
        public static final class a extends zd.a<f4.d> {
        }

        public c() {
            super(0);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, f4.d] */
        @Override // ic.a
        public final f4.d invoke() {
            return yd.a.a().a(new a().getType());
        }
    }

    /* compiled from: UpdateProfileService.kt */
    @cc.f(c = "com.anslayer.data.profile.UpdateProfileService", f = "UpdateProfileService.kt", l = {91, 94, 95}, m = "updateProfile")
    /* loaded from: classes.dex */
    public static final class d extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public Object f4105f;

        /* renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f4106g;

        /* renamed from: i, reason: collision with root package name */
        public int f4108i;

        public d(ac.d<? super d> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f4106g = obj;
            this.f4108i |= Integer.MIN_VALUE;
            return UpdateProfileService.this.g(null, null, null, null, null, null, null, this);
        }
    }

    /* compiled from: UpdateProfileService.kt */
    @cc.f(c = "com.anslayer.data.profile.UpdateProfileService$uploadProfile$2", f = "UpdateProfileService.kt", l = {126}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends k implements p<q0, ac.d<? super w4.e>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f4109f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f4110g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f4111h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f4112i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f4113j;

        /* renamed from: k, reason: collision with root package name */
        public final /* synthetic */ String f4114k;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ Uri f4115l;

        /* renamed from: m, reason: collision with root package name */
        public final /* synthetic */ Uri f4116m;

        /* renamed from: n, reason: collision with root package name */
        public final /* synthetic */ UpdateProfileService f4117n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, String str2, String str3, String str4, String str5, Uri uri, Uri uri2, UpdateProfileService updateProfileService, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f4110g = str;
            this.f4111h = str2;
            this.f4112i = str3;
            this.f4113j = str4;
            this.f4114k = str5;
            this.f4115l = uri;
            this.f4116m = uri2;
            this.f4117n = updateProfileService;
        }

        @Override // cc.a
        public final ac.d<vb.p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f4110g, this.f4111h, this.f4112i, this.f4113j, this.f4114k, this.f4115l, this.f4116m, this.f4117n, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super w4.e> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            MultipartBody.Part createFormData;
            MultipartBody.Part createFormData2;
            UserEndpoint userEndpoint;
            Object d10 = bc.c.d();
            int i10 = this.f4109f;
            if (i10 == 0) {
                vb.k.b(obj);
                String str = this.f4110g;
                RequestBody create = str == null ? null : RequestBody.create(MultipartBody.FORM, str);
                String str2 = this.f4111h;
                RequestBody create2 = str2 == null ? null : RequestBody.create(MultipartBody.FORM, str2);
                String str3 = this.f4112i;
                RequestBody create3 = str3 == null ? null : RequestBody.create(MultipartBody.FORM, str3);
                String str4 = this.f4113j;
                RequestBody create4 = str4 == null ? null : RequestBody.create(MultipartBody.FORM, str4);
                String str5 = this.f4114k;
                RequestBody create5 = str5 == null ? null : RequestBody.create(MultipartBody.FORM, str5);
                Uri uri = this.f4115l;
                if (uri == null) {
                    createFormData = null;
                } else {
                    UpdateProfileService updateProfileService = this.f4117n;
                    File a10 = l0.b.a(uri);
                    createFormData = MultipartBody.Part.createFormData("user_image", a10.getName(), RequestBody.create(updateProfileService.f4094j, a10));
                }
                Uri uri2 = this.f4116m;
                if (uri2 == null) {
                    createFormData2 = null;
                } else {
                    UpdateProfileService updateProfileService2 = this.f4117n;
                    File a11 = l0.b.a(uri2);
                    createFormData2 = MultipartBody.Part.createFormData("user_cover", a11.getName(), RequestBody.create(updateProfileService2.f4094j, a11));
                }
                UserEndpoint userEndpoint2 = this.f4117n.f4092h;
                if (userEndpoint2 == null) {
                    l.v("userEndpoint");
                    userEndpoint = null;
                } else {
                    userEndpoint = userEndpoint2;
                }
                this.f4109f = 1;
                obj = userEndpoint.updateProfile(create, create2, create3, create4, create5, createFormData, createFormData2, this);
                if (obj == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            Object a12 = ((n4.c) obj).a();
            l.c(a12);
            Object b10 = ((n4.d) a12).b();
            l.c(b10);
            return b10;
        }
    }

    public final void e() {
        PowerManager.WakeLock wakeLock = this.f4090f;
        PowerManager.WakeLock wakeLock2 = null;
        if (wakeLock == null) {
            l.v("wakeLock");
            wakeLock = null;
        }
        if (wakeLock.isHeld()) {
            PowerManager.WakeLock wakeLock3 = this.f4090f;
            if (wakeLock3 == null) {
                l.v("wakeLock");
            } else {
                wakeLock2 = wakeLock3;
            }
            wakeLock2.release();
        }
    }

    public final f4.d f() {
        return (f4.d) this.f4093i.getValue();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:1|(2:3|(15:5|6|(2:45|(1:(1:(8:49|50|51|28|(1:30)|31|32|33)(2:52|53))(10:54|55|56|25|(1:27)|28|(0)|31|32|33))(3:57|58|59))(7:8|9|10|11|12|13|(1:15)(1:17))|18|19|(1:21)|22|(1:24)|25|(0)|28|(0)|31|32|33))|61|6|(0)(0)|18|19|(0)|22|(0)|25|(0)|28|(0)|31|32|33|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b9, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008c A[Catch: Exception -> 0x00b9, TryCatch #2 {Exception -> 0x00b9, blocks: (B:28:0x00ad, B:30:0x00b1, B:31:0x00b5, B:25:0x00a0, B:19:0x007b, B:21:0x008c, B:22:0x0090), top: B:18:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1 A[Catch: Exception -> 0x00b9, TryCatch #2 {Exception -> 0x00b9, blocks: (B:28:0x00ad, B:30:0x00b1, B:31:0x00b5, B:25:0x00a0, B:19:0x007b, B:21:0x008c, B:22:0x0090), top: B:18:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x002d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object g(String str, Uri uri, Uri uri2, String str2, String str3, String str4, String str5, ac.d<? super vb.p> dVar) {
        d dVar2;
        d dVar3;
        Object d10;
        int i10;
        String str6;
        UpdateProfileService updateProfileService;
        g4.a aVar;
        UpdateProfileService updateProfileService2;
        g4.a aVar2;
        UpdateProfileService updateProfileService3;
        w4.e eVar;
        g4.a aVar3;
        u<w4.e> uVar;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i11 = dVar2.f4108i;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar2.f4108i = i11 - Integer.MIN_VALUE;
                dVar3 = dVar2;
                Object obj = dVar3.f4106g;
                d10 = bc.c.d();
                i10 = dVar3.f4108i;
                if (i10 != 0) {
                    vb.k.b(obj);
                    try {
                        dVar3.f4105f = this;
                        dVar3.f4108i = 1;
                        str6 = null;
                        try {
                            obj = h(str, uri, uri2, str2, str3, str4, str5, dVar3);
                            if (obj == d10) {
                                return d10;
                            }
                            updateProfileService2 = this;
                        } catch (Exception unused) {
                            updateProfileService = this;
                            aVar = updateProfileService.f4091g;
                            g4.a aVar4 = aVar;
                            if (aVar == null) {
                                l.v("notifier");
                                aVar4 = str6;
                            }
                            g4.a.c(aVar4, str6, 1, str6);
                            return vb.p.f15031a;
                        }
                    } catch (Exception unused2) {
                        str6 = null;
                    }
                } else {
                    try {
                    } catch (Exception unused3) {
                        str6 = null;
                        updateProfileService = i10;
                        aVar = updateProfileService.f4091g;
                        g4.a aVar42 = aVar;
                        if (aVar == null) {
                        }
                        g4.a.c(aVar42, str6, 1, str6);
                        return vb.p.f15031a;
                    }
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            UpdateProfileService updateProfileService4 = (UpdateProfileService) dVar3.f4105f;
                            vb.k.b(obj);
                            str6 = null;
                            updateProfileService2 = updateProfileService4;
                            aVar2 = updateProfileService2.f4091g;
                            g4.a aVar5 = aVar2;
                            if (aVar2 == null) {
                                l.v("notifier");
                                aVar5 = str6;
                            }
                            aVar5.a();
                            return vb.p.f15031a;
                        }
                        UpdateProfileService updateProfileService5 = (UpdateProfileService) dVar3.f4105f;
                        vb.k.b(obj);
                        str6 = null;
                        updateProfileService3 = updateProfileService5;
                        dVar3.f4105f = updateProfileService3;
                        dVar3.f4108i = 3;
                        updateProfileService2 = updateProfileService3;
                        if (b1.a(500L, dVar3) == d10) {
                            return d10;
                        }
                        aVar2 = updateProfileService2.f4091g;
                        g4.a aVar52 = aVar2;
                        if (aVar2 == null) {
                        }
                        aVar52.a();
                        return vb.p.f15031a;
                    }
                    UpdateProfileService updateProfileService6 = (UpdateProfileService) dVar3.f4105f;
                    vb.k.b(obj);
                    str6 = null;
                    updateProfileService2 = updateProfileService6;
                }
                eVar = (w4.e) obj;
                updateProfileService2.f().N().set(eVar);
                aVar3 = updateProfileService2.f4091g;
                g4.a aVar6 = aVar3;
                if (aVar3 == null) {
                    l.v("notifier");
                    aVar6 = str6;
                }
                aVar6.e();
                uVar = f4089l;
                dVar3.f4105f = updateProfileService2;
                dVar3.f4108i = 2;
                updateProfileService3 = updateProfileService2;
                if (uVar.a(eVar, dVar3) == d10) {
                    return d10;
                }
                dVar3.f4105f = updateProfileService3;
                dVar3.f4108i = 3;
                updateProfileService2 = updateProfileService3;
                if (b1.a(500L, dVar3) == d10) {
                }
                aVar2 = updateProfileService2.f4091g;
                g4.a aVar522 = aVar2;
                if (aVar2 == null) {
                }
                aVar522.a();
                return vb.p.f15031a;
            }
        }
        dVar2 = new d(dVar);
        dVar3 = dVar2;
        Object obj2 = dVar3.f4106g;
        d10 = bc.c.d();
        i10 = dVar3.f4108i;
        if (i10 != 0) {
        }
        eVar = (w4.e) obj2;
        updateProfileService2.f().N().set(eVar);
        aVar3 = updateProfileService2.f4091g;
        g4.a aVar62 = aVar3;
        if (aVar3 == null) {
        }
        aVar62.e();
        uVar = f4089l;
        dVar3.f4105f = updateProfileService2;
        dVar3.f4108i = 2;
        updateProfileService3 = updateProfileService2;
        if (uVar.a(eVar, dVar3) == d10) {
        }
        dVar3.f4105f = updateProfileService3;
        dVar3.f4108i = 3;
        updateProfileService2 = updateProfileService3;
        if (b1.a(500L, dVar3) == d10) {
        }
        aVar2 = updateProfileService2.f4091g;
        g4.a aVar5222 = aVar2;
        if (aVar2 == null) {
        }
        aVar5222.a();
        return vb.p.f15031a;
    }

    public final Object h(String str, Uri uri, Uri uri2, String str2, String str3, String str4, String str5, ac.d<? super w4.e> dVar) {
        return i.g(g1.b(), new e(str, str2, str3, str4, str5, uri, uri2, this, null), dVar);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f4091g = new g4.a(this);
        String name = UpdateProfileService.class.getName();
        l.e(name, "javaClass.name");
        this.f4090f = k7.b.a(this, name);
        this.f4092h = (UserEndpoint) z3.b.f17284d.getInstance(this).b(UserEndpoint.class);
        g4.a aVar = this.f4091g;
        if (aVar == null) {
            l.v("notifier");
            aVar = null;
        }
        startForeground(2, aVar.d().b());
    }

    @Override // android.app.Service
    public void onDestroy() {
        e();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        if (intent == null) {
            return 2;
        }
        String stringExtra = intent.getStringExtra("com.anslayer.UpdateProfileService.PROFILE_FULL_NAME");
        String stringExtra2 = intent.getStringExtra("com.anslayer.UpdateProfileService.PROFILE_USER_HANDLE");
        Uri uri = (Uri) intent.getParcelableExtra("com.anslayer.UpdateProfileService.PROFILE_AVATAR");
        Uri uri2 = (Uri) intent.getParcelableExtra("com.anslayer.UpdateProfileService.PROFILE_COVER");
        String stringExtra3 = intent.getStringExtra("com.anslayer.UpdateProfileService.PROFILE_BIO");
        String stringExtra4 = intent.getStringExtra("com.anslayer.UpdateProfileService.PROFILE_LOCATION");
        String stringExtra5 = intent.getStringExtra("com.anslayer.UpdateProfileService.PROFILE_BIRTHDATE");
        if (stringExtra == null && uri == null && uri2 == null && stringExtra2 == null && stringExtra3 == null && stringExtra4 == null && stringExtra5 == null) {
            return 2;
        }
        e7.b.b(new b(stringExtra, uri, uri2, stringExtra2, stringExtra3, stringExtra4, stringExtra5, null));
        stopSelf(i11);
        return 2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean stopService(Intent intent) {
        e();
        return super.stopService(intent);
    }
}
