.class public final enum Lcom/google/ads/interactivemedia/v3/impl/zzbr;
.super Ljava/lang/Enum;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field public static final enum zza:Lcom/google/ads/interactivemedia/v3/impl/zzbr;

.field private static final synthetic zzc:[Lcom/google/ads/interactivemedia/v3/impl/zzbr;


# instance fields
.field private final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;

    const-string v1, "GTV"

    const/4 v2, 0x0

    const-string v3, "requester_type_10"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/zzbr;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zza:Lcom/google/ads/interactivemedia/v3/impl/zzbr;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/impl/zzbr;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zzc:[Lcom/google/ads/interactivemedia/v3/impl/zzbr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p1, "GTV"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, "requester_type_10"

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/zzbr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zzc:[Lcom/google/ads/interactivemedia/v3/impl/zzbr;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/zzbr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/zzbr;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzbr;->zzb:Ljava/lang/String;

    return-object v0
.end method
