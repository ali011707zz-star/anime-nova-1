.class final Lcom/google/ads/interactivemedia/v3/internal/zzrj;
.super Lcom/google/ads/interactivemedia/v3/internal/zzrl;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzrj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzrj;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrj;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzrj;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzrj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrl;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "Ordering.natural()"

    return-object v0
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzrl;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzru;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzru;

    return-object v0
.end method
