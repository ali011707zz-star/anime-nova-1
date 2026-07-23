.class public final Lcom/google/android/gms/internal/ads/zzbem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final zza:J

.field final zzb:Ljava/lang/String;

.field final zzc:I


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbem;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbem;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzbem;->zza:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbem;->zza:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbem;->zzc:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zzc:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbem;->zza:J

    long-to-int v0, v0

    return v0
.end method
