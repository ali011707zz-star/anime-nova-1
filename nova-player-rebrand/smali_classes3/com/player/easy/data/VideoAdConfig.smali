.class public final Lcom/player/easy/data/VideoAdConfig;
.super Lcom/player/easy/data/AdType;
.source "IpInformation.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/VideoAdConfig$$serializer;,
        Lcom/player/easy/data/VideoAdConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 42\u00020\u0001:\u000245B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rBe\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u000b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u000c\u0010\u0014J\u0006\u0010\u001f\u001a\u00020\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\tH\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003JE\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\'\u001a\u00020\u00032\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u000bH\u00d6\u0001J\t\u0010+\u001a\u00020\u0005H\u00d6\u0001J%\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0001\u00a2\u0006\u0002\u00083R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0006\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00066"
    }
    d2 = {
        "Lcom/player/easy/data/VideoAdConfig;",
        "Lcom/player/easy/data/AdType;",
        "ad_enable",
        "",
        "ad_network",
        "",
        "ad_format",
        "vast_source_link",
        "fallback",
        "Lcom/player/easy/data/AdConfig;",
        "show_ad_in_span_of",
        "",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;I)V",
        "seen0",
        "countries",
        "Lcom/player/easy/data/CountryConfig;",
        "max_close_click_to_hide_banner_ad",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/player/easy/data/CountryConfig;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getAd_enable",
        "()Z",
        "getAd_network",
        "()Ljava/lang/String;",
        "getAd_format",
        "getVast_source_link",
        "getFallback",
        "()Lcom/player/easy/data/AdConfig;",
        "getShow_ad_in_span_of",
        "()I",
        "isEmpty",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$app_release",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "VideoAdConfig"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/player/easy/data/VideoAdConfig$Companion;


# instance fields
.field private final ad_enable:Z

.field private final ad_format:Ljava/lang/String;

.field private final ad_network:Ljava/lang/String;

.field private final fallback:Lcom/player/easy/data/AdConfig;

.field private final show_ad_in_span_of:I

.field private final vast_source_link:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/data/VideoAdConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/VideoAdConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/VideoAdConfig;->Companion:Lcom/player/easy/data/VideoAdConfig$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/player/easy/data/CountryConfig;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit16 v0, p1, 0xfc

    const/16 v1, 0xfc

    if-eq v1, v0, :cond_0

    .line 99
    sget-object v0, Lcom/player/easy/data/VideoAdConfig$$serializer;->INSTANCE:Lcom/player/easy/data/VideoAdConfig$$serializer;

    invoke-virtual {v0}, Lcom/player/easy/data/VideoAdConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p10}, Lcom/player/easy/data/AdType;-><init>(ILcom/player/easy/data/CountryConfig;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-boolean p4, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    iput-object p5, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    iput-object p6, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    iput-object p7, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    iput-object p8, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    iput p9, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;I)V
    .locals 1

    const-string v0, "ad_network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vast_source_link"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/player/easy/data/AdType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    iput-boolean p1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    .line 104
    iput-object p2, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    .line 108
    iput p6, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/player/easy/data/VideoAdConfig;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;IILjava/lang/Object;)Lcom/player/easy/data/VideoAdConfig;
    .locals 0

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-boolean p1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget p6, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    :cond_5
    move-object p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/player/easy/data/VideoAdConfig;->copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;I)Lcom/player/easy/data/VideoAdConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_release(Lcom/player/easy/data/VideoAdConfig;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 99
    invoke-static {p0, p1, p2}, Lcom/player/easy/data/AdType;->write$Self(Lcom/player/easy/data/AdType;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {p0}, Lcom/player/easy/data/VideoAdConfig;->getAd_enable()Z

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-virtual {p0}, Lcom/player/easy/data/VideoAdConfig;->getAd_network()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/player/easy/data/VideoAdConfig;->getAd_format()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lcom/player/easy/data/AdConfig$$serializer;->INSTANCE:Lcom/player/easy/data/AdConfig$$serializer;

    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget p0, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    const/4 v0, 0x7

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/player/easy/data/AdConfig;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    return v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;I)Lcom/player/easy/data/VideoAdConfig;
    .locals 8

    .line 0
    const-string v0, "ad_network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_format"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vast_source_link"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/player/easy/data/VideoAdConfig;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/player/easy/data/VideoAdConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/player/easy/data/AdConfig;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/player/easy/data/VideoAdConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/player/easy/data/VideoAdConfig;

    iget-boolean v1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    iget-boolean v3, p1, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    iget-object v3, p1, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    iget-object v3, p1, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    iget-object v3, p1, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    iget-object v3, p1, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    iget p1, p1, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getAd_enable()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    return v0
.end method

.method public getAd_format()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_network()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    return-object v0
.end method

.method public final getFallback()Lcom/player/easy/data/AdConfig;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    return-object v0
.end method

.method public final getShow_ad_in_span_of()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    return v0
.end method

.method public final getVast_source_link()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    invoke-virtual {v1}, Lcom/player/easy/data/AdConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/data/VideoAdConfig;->ad_enable:Z

    iget-object v1, p0, Lcom/player/easy/data/VideoAdConfig;->ad_network:Ljava/lang/String;

    iget-object v2, p0, Lcom/player/easy/data/VideoAdConfig;->ad_format:Ljava/lang/String;

    iget-object v3, p0, Lcom/player/easy/data/VideoAdConfig;->vast_source_link:Ljava/lang/String;

    iget-object v4, p0, Lcom/player/easy/data/VideoAdConfig;->fallback:Lcom/player/easy/data/AdConfig;

    iget v5, p0, Lcom/player/easy/data/VideoAdConfig;->show_ad_in_span_of:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoAdConfig(ad_enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ad_network="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ad_format="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", vast_source_link="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fallback="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", show_ad_in_span_of="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
