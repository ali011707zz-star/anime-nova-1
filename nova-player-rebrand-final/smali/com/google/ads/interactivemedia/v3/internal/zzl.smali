.class final Lcom/google/ads/interactivemedia/v3/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzacw;


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzl;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzl;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzm;->zza(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
