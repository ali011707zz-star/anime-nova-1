.class final Lcom/google/android/gms/internal/ads/zzaje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:J


# direct methods
.method synthetic constructor <init>(JJJ[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaje;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzb:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaje;

    .line 2
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaje;->zza:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaje;->zza:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzaje;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaje;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaje;->zza:J

    .line 2
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzaje;->zza:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzaje;->zzb:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaje;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final synthetic zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaje;->zza:J

    return-wide v0
.end method

.method final synthetic zzb()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzb:J

    return-wide v0
.end method

.method final synthetic zzc()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    return-wide v0
.end method
