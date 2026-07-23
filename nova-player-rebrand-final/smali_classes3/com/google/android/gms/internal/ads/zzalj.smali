.class final Lcom/google/android/gms/internal/ads/zzalj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafg;

.field private zzc:J

.field private zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafh;Lcom/google/android/gms/internal/ads/zzafg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Lcom/google/android/gms/internal/ads/zzafg;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)J
    .locals 6

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:J

    neg-long v0, v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final zzb(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Lcom/google/android/gms/internal/ads/zzafg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafg;->zza:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result p1

    .line 2
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzd:J

    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzafy;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaff;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaff;-><init>(Lcom/google/android/gms/internal/ads/zzafh;J)V

    return-object v0
.end method

.method public final zzd(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzc:J

    return-void
.end method
