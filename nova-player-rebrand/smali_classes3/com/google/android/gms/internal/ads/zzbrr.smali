.class final Lcom/google/android/gms/internal/ads/zzbrr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbrg;

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/util/zzbv;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbsl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/ads/internal/util/zzbv;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbrr;->zza:Lcom/google/android/gms/internal/ads/zzbrg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbrr;->zzb:Lcom/google/android/gms/ads/internal/util/zzbv;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrr;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbsm;

    const-string p1, "loadJavascriptEngine > /requestReload handler: Trying to acquire lock"

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrr;->zzc:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzg()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "loadJavascriptEngine > /requestReload handler: Lock acquired"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-string v0, "JS Engine is requesting an update"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->zzk()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbsl;->zzl(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbsl;->zza(Lcom/google/android/gms/internal/ads/zzazh;)Lcom/google/android/gms/internal/ads/zzbsk;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrr;->zza:Lcom/google/android/gms/internal/ads/zzbrg;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrr;->zzb:Lcom/google/android/gms/ads/internal/util/zzbv;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/zzboh;

    .line 9
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbsm;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 10
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadJavascriptEngine > /requestReload handler: Lock released"

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    .line 10
    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
