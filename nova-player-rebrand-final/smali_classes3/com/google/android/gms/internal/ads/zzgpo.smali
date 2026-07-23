.class final Lcom/google/android/gms/internal/ads/zzgpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgqg;

.field private static final zzd:Landroid/content/Intent;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgqf;

.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqg;

    const-string v1, "OverlayDisplayService"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgpo;->zzd:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgqf;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgpo;->zzd:Landroid/content/Intent;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgoz;->zza:Lcom/google/android/gms/internal/ads/zzgoz;

    const-string v4, "OverlayDisplayService"

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgqf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgqg;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzgpw;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zze:Ljava/lang/String;

    return-void
.end method

.method private static zzh(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgrt;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgpo;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzgpn;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzgpt;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpo;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzgqg;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgps;->zzd()Lcom/google/android/gms/internal/ads/zzgpr;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->zzc(I)Lcom/google/android/gms/internal/ads/zzgpr;

    const/16 p2, 0x1fe0

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgpr;->zza(I)Lcom/google/android/gms/internal/ads/zzgpr;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpr;->zzd()Lcom/google/android/gms/internal/ads/zzgps;

    move-result-object p1

    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpt;->zza(Lcom/google/android/gms/internal/ads/zzgps;)V

    return v0
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzgpq;Lcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Play Store not found."

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "error: %s"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgqg;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzb()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken."

    .line 3
    invoke-static {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzgpo;->zzj(Lcom/google/android/gms/internal/ads/zzgpt;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpl;-><init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgpq;Lcom/google/android/gms/internal/ads/zzgpt;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqf;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzgov;Lcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Play Store not found."

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "error: %s"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgqg;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgov;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgov;->zzb()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken."

    .line 3
    invoke-static {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzgpo;->zzj(Lcom/google/android/gms/internal/ads/zzgpt;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpa;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpa;-><init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgov;Lcom/google/android/gms/internal/ads/zzgpt;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqf;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzgpv;Lcom/google/android/gms/internal/ads/zzgpt;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Play Store not found."

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "error: %s"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzgqg;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpv;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpv;->zzb()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken."

    .line 3
    invoke-static {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzgpo;->zzj(Lcom/google/android/gms/internal/ads/zzgpt;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpc;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzgpc;-><init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgpv;ILcom/google/android/gms/internal/ads/zzgpt;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqf;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "unbind LMD display overlay service"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzgqg;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzb()V

    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzgpq;Lcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqf;->zzc()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgoj;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zze:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    .line 2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "callerPackage"

    .line 3
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "windowToken"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zza()Landroid/os/IBinder;

    move-result-object v7

    .line 4
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzj()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/ads/zzgpd;-><init>(Landroid/os/Bundle;)V

    .line 5
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    const-string v6, "layoutGravity"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzc()I

    move-result v7

    .line 6
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "layoutVerticalMargin"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzd()F

    move-result v7

    .line 7
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "displayMode"

    .line 8
    invoke-virtual {v5, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "triggerMode"

    .line 9
    invoke-virtual {v5, v6, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "windowWidthPx"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzh()I

    move-result v7

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzgpe;-><init>(Landroid/os/Bundle;)V

    .line 11
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgpf;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzgpf;-><init>(Landroid/os/Bundle;)V

    .line 12
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpq;->zzb()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgpg;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzgpg;-><init>(Landroid/os/Bundle;)V

    .line 13
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgph;

    invoke-direct {p1, v5}, Lcom/google/android/gms/internal/ads/zzgph;-><init>(Landroid/os/Bundle;)V

    .line 14
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    const-string p1, "stableSessionToken"

    .line 15
    invoke-virtual {v5, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgpm;

    .line 16
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzgpm;-><init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgpt;)V

    .line 17
    invoke-interface {v2, v4, v5, p1}, Lcom/google/android/gms/internal/ads/zzgoj;->zze(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzgol;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 18
    :cond_1
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zze:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "show overlay display from: %s"

    .line 19
    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgqg;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzgov;Lcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgoj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zze:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "callerPackage"

    .line 3
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgov;->zza()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgpi;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzgpi;-><init>(Landroid/os/Bundle;)V

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgov;->zzb()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgpj;-><init>(Landroid/os/Bundle;)V

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgpm;

    .line 6
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzgpm;-><init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgpt;)V

    .line 7
    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgoj;->zzf(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzgol;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "dismiss overlay display from: %s"

    .line 9
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgqg;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method final synthetic zzg(Lcom/google/android/gms/internal/ads/zzgpv;ILcom/google/android/gms/internal/ads/zzgpt;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqf;->zzc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgoj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zze:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "callerPackage"

    .line 3
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayMode"

    .line 4
    invoke-virtual {v2, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpv;->zza()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgpk;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzgpk;-><init>(Landroid/os/Bundle;)V

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpv;->zzb()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgpb;-><init>(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzgpo;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpn;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgpm;

    .line 7
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzgpm;-><init>(Lcom/google/android/gms/internal/ads/zzgpo;Lcom/google/android/gms/internal/ads/zzgpt;)V

    .line 8
    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgoj;->zzg(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzgol;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzgpo;->zzc:Lcom/google/android/gms/internal/ads/zzgqg;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->zze:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const-string p2, "switchDisplayMode overlay display to %d from: %s"

    .line 11
    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgqg;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
