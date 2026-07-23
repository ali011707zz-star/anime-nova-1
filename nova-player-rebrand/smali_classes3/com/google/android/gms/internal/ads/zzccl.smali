.class final Lcom/google/android/gms/internal/ads/zzccl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/common/util/Clock;

.field private zzc:Lcom/google/android/gms/ads/internal/util/zzg;

.field private zzd:Lcom/google/android/gms/internal/ads/zzccq;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzccl;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/common/util/Clock;)Lcom/google/android/gms/internal/ads/zzccl;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzb:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/ads/internal/util/zzg;)Lcom/google/android/gms/internal/ads/zzccl;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzccq;)Lcom/google/android/gms/internal/ads/zzccl;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzd:Lcom/google/android/gms/internal/ads/zzccq;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzccr;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zza:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzb:Lcom/google/android/gms/common/util/Clock;

    const-class v1, Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    const-class v1, Lcom/google/android/gms/ads/internal/util/zzg;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzd:Lcom/google/android/gms/internal/ads/zzccq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzccq;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzccm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzb:Lcom/google/android/gms/common/util/Clock;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzc:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzd:Lcom/google/android/gms/internal/ads/zzccq;

    .line 5
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzccm;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzccq;)V

    return-object v0
.end method
