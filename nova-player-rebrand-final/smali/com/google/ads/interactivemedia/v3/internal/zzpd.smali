.class final Lcom/google/ads/interactivemedia/v3/internal/zzpd;
.super Lcom/google/ads/interactivemedia/v3/internal/zzpl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzpd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzpd;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpd;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzpd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 0
    const v0, 0x79a31aac

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "Optional.absent()"

    return-object v0
.end method

.method public final zza()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    return-object p1
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;
    .locals 0

    .line 0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzpd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzpd;

    return-object p1
.end method
