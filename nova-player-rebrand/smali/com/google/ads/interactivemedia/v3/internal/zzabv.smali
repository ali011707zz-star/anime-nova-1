.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzabv;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static volatile zze:I = 0x64


# instance fields
.field zza:I

.field final zzb:I

.field zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzabv;->zze:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabv;->zzb:I

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/google/ads/interactivemedia/v3/internal/zzabv;->zze:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzabv;->zzb:I

    return-void
.end method

.method static zzC([BIIZ)Lcom/google/ads/interactivemedia/v3/internal/zzabv;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzabu;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabu;-><init>([BIIZ[B)V

    .line 2
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzabu;->zzy(I)I
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzadd; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static zzD(I)I
    .locals 1

    .line 0
    and-int/lit8 v0, p0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    neg-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzE(J)J
    .locals 3

    .line 0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    neg-long v0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public abstract zzA()Z
.end method

.method public abstract zzB()I
.end method

.method public abstract zza()I
.end method

.method public abstract zzb(I)V
.end method

.method public abstract zzc()D
.end method

.method public abstract zzd()F
.end method

.method public abstract zze()J
.end method

.method public abstract zzf()J
.end method

.method public abstract zzg()I
.end method

.method public abstract zzh()J
.end method

.method public abstract zzi()I
.end method

.method public abstract zzj()Z
.end method

.method public abstract zzk()Ljava/lang/String;
.end method

.method public abstract zzl()Ljava/lang/String;
.end method

.method public abstract zzm()Lcom/google/ads/interactivemedia/v3/internal/zzabt;
.end method

.method public abstract zzn()I
.end method

.method public abstract zzo()I
.end method

.method public abstract zzp()I
.end method

.method public abstract zzq()J
.end method

.method public abstract zzr()I
.end method

.method public abstract zzs()J
.end method

.method public abstract zzy(I)I
.end method

.method public abstract zzz(I)V
.end method
