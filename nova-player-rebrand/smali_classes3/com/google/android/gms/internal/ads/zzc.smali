.class public final Lcom/google/android/gms/internal/ads/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzc;

.field private static final zze:Lcom/google/android/gms/internal/ads/zza;


# instance fields
.field public final zzb:I

.field public final zzc:J

.field public final zzd:I

.field private final zzf:[Lcom/google/android/gms/internal/ads/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzc;

    const/4 v8, 0x0

    new-array v2, v8, [Lcom/google/android/gms/internal/ads/zza;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzc;-><init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zza;JJI)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->zza:Lcom/google/android/gms/internal/ads/zzc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zza;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zza;-><init>(J)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zza;->zzb(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzc;->zze:Lcom/google/android/gms/internal/ads/zza;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/4 v0, 0x1

    const/16 v1, 0x24

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x3

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    const/4 v0, 0x4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zza;JJI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzc;->zzc:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:[Lcom/google/android/gms/internal/ads/zza;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzd:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzc;

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:[Lcom/google/android/gms/internal/ads/zza;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zzf:[Lcom/google/android/gms/internal/ads/zza;

    .line 3
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v0, v0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:[Lcom/google/android/gms/internal/ads/zza;

    mul-int/lit16 v0, v0, 0x3c1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs=0, adGroups=["

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "])"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zza;
    .locals 1

    if-gez p1, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzc;->zze:Lcom/google/android/gms/internal/ads/zza;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzc;->zzf:[Lcom/google/android/gms/internal/ads/zza;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzb(I)Z
    .locals 0

    const/4 p1, -0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    const/4 p1, 0x0

    return p1
.end method
