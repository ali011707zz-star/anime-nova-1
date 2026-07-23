.class public abstract Lcom/player/easy/data/AdType;
.super Ljava/lang/Object;
.source "IpInformation.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/AdType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 !2\u00020\u0001:\u0001!B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B-\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0002\u0010\u000bJ \u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0007R\u0012\u0010\u000c\u001a\u00020\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u0082\u0001\u0003\"#$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/player/easy/data/AdType;",
        "",
        "<init>",
        "()V",
        "seen0",
        "",
        "countries",
        "Lcom/player/easy/data/CountryConfig;",
        "max_close_click_to_hide_banner_ad",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/player/easy/data/CountryConfig;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "ad_enable",
        "",
        "getAd_enable",
        "()Z",
        "ad_network",
        "",
        "getAd_network",
        "()Ljava/lang/String;",
        "ad_format",
        "getAd_format",
        "getCountries",
        "()Lcom/player/easy/data/CountryConfig;",
        "getMax_close_click_to_hide_banner_ad",
        "()I",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "Companion",
        "Lcom/player/easy/data/AdConfig;",
        "Lcom/player/easy/data/CustomAdConfig;",
        "Lcom/player/easy/data/VideoAdConfig;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/player/easy/data/AdType$Companion;


# instance fields
.field private final countries:Lcom/player/easy/data/CountryConfig;

.field private final max_close_click_to_hide_banner_ad:I


# direct methods
.method public static synthetic $r8$lambda$yN-Tn5-ezkBmhgTPEfeRp6NRnek()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/AdType;->_init_$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/player/easy/data/AdType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/AdType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/AdType;->Companion:Lcom/player/easy/data/AdType$Companion;

    .line 66
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/player/easy/data/AdType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/player/easy/data/AdType$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/player/easy/data/AdType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 73
    iput v0, p0, Lcom/player/easy/data/AdType;->max_close_click_to_hide_banner_ad:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/player/easy/data/CountryConfig;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-nez p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/player/easy/data/AdType;->countries:Lcom/player/easy/data/CountryConfig;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const p1, 0x7fffffff

    iput p1, p0, Lcom/player/easy/data/AdType;->max_close_click_to_hide_banner_ad:I

    return-void

    :cond_1
    iput p3, p0, Lcom/player/easy/data/AdType;->max_close_click_to_hide_banner_ad:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/player/easy/data/AdType;-><init>()V

    return-void
.end method

.method private static final synthetic _init_$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 8

    .line 66
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lcom/player/easy/data/AdType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v1, Lcom/player/easy/data/AdConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-class v3, Lcom/player/easy/data/CustomAdConfig;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v4, Lcom/player/easy/data/VideoAdConfig;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x3

    move-object v6, v3

    new-array v3, v5, [Lkotlin/reflect/KClass;

    const/4 v7, 0x0

    aput-object v1, v3, v7

    const/4 v1, 0x1

    aput-object v6, v3, v1

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-array v4, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lcom/player/easy/data/AdConfig$$serializer;->INSTANCE:Lcom/player/easy/data/AdConfig$$serializer;

    aput-object v5, v4, v7

    sget-object v5, Lcom/player/easy/data/CustomAdConfig$$serializer;->INSTANCE:Lcom/player/easy/data/CustomAdConfig$$serializer;

    aput-object v5, v4, v1

    sget-object v1, Lcom/player/easy/data/VideoAdConfig$$serializer;->INSTANCE:Lcom/player/easy/data/VideoAdConfig$$serializer;

    aput-object v1, v4, v6

    new-array v5, v7, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.player.easy.data.AdType"

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 66
    sget-object v0, Lcom/player/easy/data/AdType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self(Lcom/player/easy/data/AdType;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 66
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/player/easy/data/AdType;->countries:Lcom/player/easy/data/CountryConfig;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/player/easy/data/CountryConfig$$serializer;->INSTANCE:Lcom/player/easy/data/CountryConfig$$serializer;

    iget-object v2, p0, Lcom/player/easy/data/AdType;->countries:Lcom/player/easy/data/CountryConfig;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/player/easy/data/AdType;->max_close_click_to_hide_banner_ad:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    :goto_1
    iget p0, p0, Lcom/player/easy/data/AdType;->max_close_click_to_hide_banner_ad:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract getAd_enable()Z
.end method

.method public abstract getAd_format()Ljava/lang/String;
.end method

.method public abstract getAd_network()Ljava/lang/String;
.end method

.method public final getCountries()Lcom/player/easy/data/CountryConfig;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/player/easy/data/AdType;->countries:Lcom/player/easy/data/CountryConfig;

    return-object v0
.end method

.method public final getMax_close_click_to_hide_banner_ad()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/player/easy/data/AdType;->max_close_click_to_hide_banner_ad:I

    return v0
.end method
