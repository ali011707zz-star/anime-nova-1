.class public final Lcom/google/android/gms/internal/ads/zzaff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafh;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafh;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaff;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzb:J

    return-void
.end method

.method private final zzd(JJ)Lcom/google/android/gms/internal/ads/zzafz;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaff;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzafh;->zze:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr p1, v1

    int-to-long v0, v0

    div-long/2addr p1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafz;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzb:J

    add-long/2addr v1, p3

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaff;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafh;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaff;->zza:Lcom/google/android/gms/internal/ads/zzafh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafh;->zzk:Lcom/google/android/gms/internal/ads/zzafg;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafh;->zzb(J)J

    move-result-wide v2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzafg;->zza:[J

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    invoke-static {v0, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzm([JJZZ)I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    move-wide v7, v3

    goto :goto_0

    .line 3
    :cond_0
    aget-wide v7, v0, v2

    .line 2
    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzafg;->zzb:[J

    if-ne v2, v6, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    aget-wide v3, v1, v2

    .line 5
    :goto_1
    invoke-direct {p0, v7, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzaff;->zzd(JJ)Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object v3

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzafz;->zzb:J

    cmp-long p1, v7, p1

    if-eqz p1, :cond_3

    .line 6
    array-length p1, v0

    add-int/2addr p1, v6

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v2, v5

    .line 8
    aget-wide p1, v0, v2

    aget-wide v0, v1, v2

    .line 9
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaff;->zzd(JJ)Lcom/google/android/gms/internal/ads/zzafz;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzafw;

    .line 10
    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p2

    .line 6
    :cond_3
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafw;

    .line 7
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    return-object p1
.end method
