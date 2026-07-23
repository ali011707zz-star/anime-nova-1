.class public final Lcom/google/android/gms/internal/ads/zzcxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdcm;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdcm;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zza:Lcom/google/android/gms/internal/ads/zzdcm;

    return-void
.end method

.method private final zzm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zza:Lcom/google/android/gms/internal/ads/zzdcm;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcm;->zza()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzdS()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcxa;->zzm()V

    return-void
.end method

.method public final zzdT(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcxa;->zzm()V

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zza:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcm;->zzc()V

    return-void
.end method

.method public final zzl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxa;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
