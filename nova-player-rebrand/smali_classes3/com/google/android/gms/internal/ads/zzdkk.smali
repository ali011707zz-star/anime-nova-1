.class public final Lcom/google/android/gms/internal/ads/zzdkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lcom/google/android/gms/ads/internal/client/zza;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdvh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfiu;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdvh;Lcom/google/android/gms/internal/ads/zzfiu;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zza:Lcom/google/android/gms/internal/ads/zzdvh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    return-void
.end method

.method private final zzl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zza:Lcom/google/android/gms/internal/ads/zzdvh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zza:Lcom/google/android/gms/internal/ads/zzdvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvh;->zzc()V

    return-void
.end method

.method public final zzdS()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzl()V

    return-void
.end method

.method public final zzdT(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkk;->zzl()V

    return-void
.end method

.method public final zzdo()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdp()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdq()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdv()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdw()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdx()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdy()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzdz()V
    .locals 0

    .line 0
    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zza:Lcom/google/android/gms/internal/ads/zzdvh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkk;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzb(Ljava/lang/String;)V

    return-void
.end method
