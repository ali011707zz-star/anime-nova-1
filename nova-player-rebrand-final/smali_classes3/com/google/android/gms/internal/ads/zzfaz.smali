.class final synthetic Lcom/google/android/gms/internal/ads/zzfaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Ljava/util/List;

.field private final synthetic zzb:Ljava/lang/Object;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Landroid/os/Bundle;

.field private final synthetic zze:Landroid/os/Bundle;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/Object;ZLandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzd:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zze:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfav;

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzc:Z

    .line 3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzfav;->zza(Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzfav;->zzb(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzcK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zzd:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfaz;->zze:Landroid/os/Bundle;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zzdah;

    if-eqz v5, :cond_2

    .line 8
    sget-object v5, Lcom/google/android/gms/internal/ads/zzdxh;->zzf:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "client_sig_latency_key"

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    .line 11
    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/ads/zzdxh;->zzi:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "gms_sig_latency_key"

    .line 13
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return-object v1
.end method
