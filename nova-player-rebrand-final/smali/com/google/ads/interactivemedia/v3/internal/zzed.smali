.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzed;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# static fields
.field static final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzed;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzed;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzed;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzed;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzed;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method
