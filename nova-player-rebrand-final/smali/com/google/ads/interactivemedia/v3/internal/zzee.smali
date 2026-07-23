.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzee;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzpg;


# static fields
.field static final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzee;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzee;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzee;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzee;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzee;

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

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzed;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzed;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zze(Lcom/google/ads/interactivemedia/v3/internal/zzpg;)Lcom/google/ads/interactivemedia/v3/internal/zzpl;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzpl;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method
