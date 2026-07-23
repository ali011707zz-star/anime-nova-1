.class public final Lcom/google/android/gms/internal/ads/zzgan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static zzb:Lcom/google/android/gms/internal/ads/zzgan;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgaj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgaj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgan;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgai;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgai;

    return-void
.end method

.method public static final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgan;
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgan;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgan;->zzb:Lcom/google/android/gms/internal/ads/zzgan;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgan;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgan;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgan;->zzb:Lcom/google/android/gms/internal/ads/zzgan;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgan;->zzb:Lcom/google/android/gms/internal/ads/zzgan;

    .line 2
    monitor-exit v0

    return-object p0

    .line 3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzgah;)V
    .locals 2

    .line 1
    const-class p1, Lcom/google/android/gms/internal/ads/zzgan;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgan;->zza:Lcom/google/android/gms/internal/ads/zzgaj;

    const-string v1, "vendor_scoped_gpid_v2_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    const-string v1, "vendor_scoped_gpid_v2_creation_time"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgaj;->zzf(Ljava/lang/String;)V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
