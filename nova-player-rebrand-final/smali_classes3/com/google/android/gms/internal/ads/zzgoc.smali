.class public final Lcom/google/android/gms/internal/ads/zzgoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdh;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzc:J

.field private zzd:J

.field private zze:Ljava/lang/Throwable;

.field private final zzf:I


# direct methods
.method constructor <init>(ILcom/google/android/gms/internal/ads/zzgao;Lcom/google/android/gms/internal/ads/zzgdh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzd:J

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zze:Ljava/lang/Throwable;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzf:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zza:Lcom/google/android/gms/internal/ads/zzgdh;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzc:J

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Finished trace."

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zze:Ljava/lang/Throwable;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Finished trace."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzd:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zza:Lcom/google/android/gms/internal/ads/zzgdh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzf:I

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzd:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zzc:J

    sub-long/2addr v4, v6

    :goto_0
    move-wide v5, v4

    goto :goto_1

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    :goto_1
    add-int/lit8 v4, v1, -0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgoc;->zze:Ljava/lang/Throwable;

    const/4 v8, 0x0

    .line 4
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgdh;->zzb(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Finished trace."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
