.class public final Lcom/google/android/gms/internal/consent_sdk/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/ump/ConsentForm;


# instance fields
.field zza:Z

.field zzb:Z

.field private final zzc:Landroid/app/Application;

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zzbz;

.field private final zze:Lcom/google/android/gms/internal/consent_sdk/zzaq;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zzbs;

.field private final zzg:Lcom/google/android/gms/internal/consent_sdk/zztm;

.field private final zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

.field private zzi:Landroid/app/Dialog;

.field private zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

.field private final zzk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzl:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzm:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzn:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/zzad;Lcom/google/android/gms/internal/consent_sdk/zzbz;Lcom/google/android/gms/internal/consent_sdk/zzaq;Lcom/google/android/gms/internal/consent_sdk/zzbs;Lcom/google/android/gms/internal/consent_sdk/zztm;Lcom/google/android/gms/internal/consent_sdk/zzcr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzk:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzm:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzn:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzc:Landroid/app/Application;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbz;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zze:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    iput-object p6, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzg:Lcom/google/android/gms/internal/consent_sdk/zztm;

    iput-object p7, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Landroid/app/Application;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzc:Landroid/app/Application;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Landroid/app/Dialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzi:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Lcom/google/android/gms/internal/consent_sdk/zzbz;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbz;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/consent_sdk/zzbe;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzn:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private final zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzi:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzi:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbz;->zza(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzn:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbb;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzbb;->zza(Lcom/google/android/gms/internal/consent_sdk/zzbb;)V

    :cond_1
    return-void
.end method

.method private final zzl(Lcom/google/android/gms/internal/consent_sdk/zzg;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzb:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzb(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zze(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzcz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Z

    if-eq v2, v0, :cond_0

    const-string v0, "ConsentForm#show can only be invoked once."

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "Privacy options form is being loading. Please try again later."

    .line 4
    :goto_0
    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Lcom/google/android/ump/FormError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->onConsentFormDismissed(Lcom/google/android/ump/FormError;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzc()V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzbb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbb;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzc:Landroid/app/Application;

    .line 9
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzn:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbz;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbz;->zza(Landroid/app/Activity;)V

    new-instance v0, Landroid/app/Dialog;

    const v2, 0x1030010

    .line 12
    invoke-direct {v0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 16
    const-string v0, "Activity with null windows is passed in."

    invoke-direct {p1, v3, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Lcom/google/android/ump/FormError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->onConsentFormDismissed(Lcom/google/android/ump/FormError;)V

    return-void

    :cond_2
    const/4 v2, -0x1

    .line 19
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 20
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x1000000

    .line 21
    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 22
    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzm:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzi:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    const-string p2, "UMP_messagePresented"

    const-string v0, ""

    .line 25
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzbx;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    return-void
.end method

.method final zzc()Lcom/google/android/gms/internal/consent_sdk/zzbx;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    return-object v0
.end method

.method final zzf(Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzg:Lcom/google/android/gms/internal/consent_sdk/zztm;

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzby;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzby;->zza()Lcom/google/android/gms/internal/consent_sdk/zzbx;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzi()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbv;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbv;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbx;Lcom/google/android/gms/internal/consent_sdk/zzbw;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzj()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbc;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbc;-><init>(Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;Lcom/google/android/gms/internal/consent_sdk/zzbd;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzbx;

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    .line 11
    const-string v6, "text/html"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzcz;->zza:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzba;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/consent_sdk/zzba;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzbe;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final zzg(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zze:Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 3
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzg(I)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->onConsentFormDismissed(Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method final zzh(Lcom/google/android/gms/internal/consent_sdk/zzg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzm:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl(Lcom/google/android/gms/internal/consent_sdk/zzg;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Lcom/google/android/ump/FormError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;->onConsentFormDismissed(Lcom/google/android/ump/FormError;)V

    return-void
.end method

.method final zzi()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzb:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzd(Ljava/lang/String;)V

    .line 3
    :cond_2
    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzbc;->onConsentFormLoadSuccess(Lcom/google/android/ump/ConsentForm;)V

    return-void
.end method

.method final zzj(Lcom/google/android/gms/internal/consent_sdk/zzg;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzl:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zza:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzb:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzb(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbe;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcr;

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzd(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzg;->zza()Lcom/google/android/ump/FormError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzbc;->onConsentFormLoadFailure(Lcom/google/android/ump/FormError;)V

    return-void
.end method
