.class final Lcom/google/android/gms/internal/ads/zzbru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcer;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsk;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoe;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbsl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbsk;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbru;->zza:Lcom/google/android/gms/internal/ads/zzbsk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbru;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbru;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrg;

    const-string p1, "loadNewJavascriptEngine (success): Trying to acquire lock"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbru;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzg()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "loadNewJavascriptEngine (success): Lock acquired"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzl(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzi()Lcom/google/android/gms/internal/ads/zzbsk;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbru;->zza:Lcom/google/android/gms/internal/ads/zzbsk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzi()Lcom/google/android/gms/internal/ads/zzbsk;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "New JS engine is loaded, marking previous one as destroyable."

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzi()Lcom/google/android/gms/internal/ads/zzbsk;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbsk;->zzc()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbru;->zza:Lcom/google/android/gms/internal/ads/zzbsk;

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzj(Lcom/google/android/gms/internal/ads/zzbsk;)V

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbix;->zzd:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzh()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzh()Lcom/google/android/gms/internal/ads/zzfor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbru;->zzb:Lcom/google/android/gms/internal/ads/zzfoe;

    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzfoe;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfoe;->zzm()Lcom/google/android/gms/internal/ads/zzfoh;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfor;->zzb(Lcom/google/android/gms/internal/ads/zzfoh;)V

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadNewJavascriptEngine (success): Lock released"

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    .line 10
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
