.class public final Lcom/google/ads/interactivemedia/v3/internal/zzkv;
.super Lcom/google/ads/interactivemedia/v3/internal/zzky;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

.field private final zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzky;-><init>()V

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzho;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzho;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/ads/interactivemedia/v3/internal/zzk;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzhj;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    return-void
.end method

.method private final zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Z)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;->zze(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    .line 4
    invoke-virtual {p3, p1, p2, v0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;->zzg(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzht; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zze()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzf()Z

    move-result v0

    return v0
.end method

.method public final zzd()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzho;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzho;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    move-result-object v0

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzhr;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzhg;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    return v2
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzk(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzj(Landroid/view/View;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;->zzf(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzi(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "ms"

    return-object v0
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;->zzb(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;->zzc(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzhs;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzhs;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Z)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;[B)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzhj;->zzm(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzhj;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzho;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzho;->zzi(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzkv;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Z)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    return-object p1
.end method
