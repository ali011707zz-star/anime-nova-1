.class public final Lcom/player/easy/player/RemoteReward;
.super Ljava/lang/Object;
.source "RemoteReward.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/RemoteReward$$serializer;,
        Lcom/player/easy/player/RemoteReward$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 <2\u00020\u0001:\u0002;<Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0000\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u0011Bs\u0008\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0008\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0015J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0006H\u00c6\u0003J\t\u0010(\u001a\u00020\u0008H\u00c6\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\nH\u00c6\u0003J\t\u0010*\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0000H\u00c6\u0003J\t\u0010-\u001a\u00020\u0008H\u00c6\u0003Jo\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00002\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010/\u001a\u00020\u00032\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u00020\u0008H\u00d6\u0001J\t\u00102\u001a\u00020\u0006H\u00d6\u0001J%\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0001\u00a2\u0006\u0002\u0008:R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001c\u00a8\u0006="
    }
    d2 = {
        "Lcom/player/easy/player/RemoteReward;",
        "",
        "enabled",
        "",
        "huawei_enable",
        "reward_unit_id",
        "",
        "show_ad_every_n_min",
        "",
        "only_for_links",
        "",
        "ad_type",
        "Lcom/player/easy/player/RemoteRewardAdType;",
        "excludePkg",
        "excludePkgConfig",
        "adDisplay",
        "<init>",
        "(ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;I)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getEnabled",
        "()Z",
        "getHuawei_enable",
        "getReward_unit_id",
        "()Ljava/lang/String;",
        "getShow_ad_every_n_min",
        "()I",
        "getOnly_for_links",
        "()Ljava/util/List;",
        "getAd_type",
        "()Lcom/player/easy/player/RemoteRewardAdType;",
        "getExcludePkg",
        "getExcludePkgConfig",
        "()Lcom/player/easy/player/RemoteReward;",
        "getAdDisplay",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
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
        "$serializer",
        "Companion",
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
.field private static final $childSerializers:[Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final Companion:Lcom/player/easy/player/RemoteReward$Companion;


# instance fields
.field private final adDisplay:I

.field private final ad_type:Lcom/player/easy/player/RemoteRewardAdType;

.field private final enabled:Z

.field private final excludePkg:Ljava/lang/String;

.field private final excludePkgConfig:Lcom/player/easy/player/RemoteReward;

.field private final huawei_enable:Z

.field private final only_for_links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reward_unit_id:Ljava/lang/String;

.field private final show_ad_every_n_min:I


# direct methods
.method public static synthetic $r8$lambda$JlNFU8WXatYrgww52jcp0opLaNA()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/player/RemoteReward;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$oTQuFr9wWoBY39z8yXy7I5MDbrs()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/player/RemoteReward;->_childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/player/easy/player/RemoteReward$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/player/RemoteReward$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/player/RemoteReward;->Companion:Lcom/player/easy/player/RemoteReward$Companion;

    .line 11
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/player/easy/player/RemoteReward$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/player/easy/player/RemoteReward$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lcom/player/easy/player/RemoteReward$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/player/easy/player/RemoteReward$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v3, 0x9

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const/4 v2, 0x5

    aput-object v0, v3, v2

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/16 v0, 0x8

    aput-object v1, v3, v0

    sput-object v3, Lcom/player/easy/player/RemoteReward;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p11, :cond_0

    .line 11
    sget-object p11, Lcom/player/easy/player/RemoteReward$$serializer;->INSTANCE:Lcom/player/easy/player/RemoteReward$$serializer;

    invoke-virtual {p11}, Lcom/player/easy/player/RemoteReward$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    iput-boolean p3, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    iput-object p4, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    iput p5, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    and-int/lit8 p2, p1, 0x10

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput-object p3, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput-object p6, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    :goto_0
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_2

    .line 19
    sget-object p2, Lcom/player/easy/player/RemoteRewardAdType;->DOWNLOAD:Lcom/player/easy/player/RemoteRewardAdType;

    .line 11
    iput-object p2, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    goto :goto_1

    :cond_2
    iput-object p7, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    :goto_1
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_3

    iput-object p3, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p8, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    :goto_2
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_4

    iput-object p3, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    goto :goto_3

    :cond_4
    iput-object p9, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    :goto_3
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    return-void

    :cond_5
    iput p10, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/player/easy/player/RemoteRewardAdType;",
            "Ljava/lang/String;",
            "Lcom/player/easy/player/RemoteReward;",
            "I)V"
        }
    .end annotation

    const-string v0, "reward_unit_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_type"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    .line 15
    iput-boolean p2, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    .line 16
    iput-object p3, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    .line 18
    iput-object p5, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    .line 19
    iput-object p6, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    .line 21
    iput-object p7, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    .line 24
    iput p9, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x10

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_1

    .line 19
    sget-object p6, Lcom/player/easy/player/RemoteRewardAdType;->DOWNLOAD:Lcom/player/easy/player/RemoteRewardAdType;

    :cond_1
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_2

    move-object p7, v0

    :cond_2
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_3

    move-object p8, v0

    :cond_3
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_4

    const/4 p9, 0x0

    :cond_4
    move p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 13
    invoke-direct/range {p1 .. p10}, Lcom/player/easy/player/RemoteReward;-><init>(ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;I)V

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 0
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 0
    invoke-static {}, Lcom/player/easy/player/RemoteRewardAdType;->values()[Lcom/player/easy/player/RemoteRewardAdType;

    move-result-object v0

    const-string v1, "com.player.easy.player.RemoteRewardAdType"

    invoke-static {v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    .line 11
    sget-object v0, Lcom/player/easy/player/RemoteReward;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/player/easy/player/RemoteReward;ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;IILjava/lang/Object;)Lcom/player/easy/player/RemoteReward;
    .locals 0

    .line 0
    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-boolean p1, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-boolean p2, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget p4, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-object p6, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-object p7, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget p9, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    :cond_8
    move-object p10, p8

    move p11, p9

    move-object p8, p6

    move-object p9, p7

    move p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/player/easy/player/RemoteReward;->copy(ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;I)Lcom/player/easy/player/RemoteReward;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_release(Lcom/player/easy/player/RemoteReward;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 11
    sget-object v0, Lcom/player/easy/player/RemoteReward;->$childSerializers:[Lkotlin/Lazy;

    iget-boolean v1, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v1, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget v1, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    if-eqz v2, :cond_1

    :goto_0
    aget-object v2, v0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    .line 19
    sget-object v3, Lcom/player/easy/player/RemoteRewardAdType;->DOWNLOAD:Lcom/player/easy/player/RemoteRewardAdType;

    if-eq v2, v3, :cond_3

    .line 11
    :goto_1
    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x6

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x7

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lcom/player/easy/player/RemoteReward$$serializer;->INSTANCE:Lcom/player/easy/player/RemoteReward$$serializer;

    iget-object v2, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget v1, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    if-eqz v1, :cond_9

    :goto_4
    iget p0, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Lcom/player/easy/player/RemoteRewardAdType;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/player/easy/player/RemoteReward;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    return v0
.end method

.method public final copy(ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;I)Lcom/player/easy/player/RemoteReward;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/player/easy/player/RemoteRewardAdType;",
            "Ljava/lang/String;",
            "Lcom/player/easy/player/RemoteReward;",
            "I)",
            "Lcom/player/easy/player/RemoteReward;"
        }
    .end annotation

    .line 0
    const-string v0, "reward_unit_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad_type"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/player/easy/player/RemoteReward;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/player/easy/player/RemoteReward;-><init>(ZZLjava/lang/String;ILjava/util/List;Lcom/player/easy/player/RemoteRewardAdType;Ljava/lang/String;Lcom/player/easy/player/RemoteReward;I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/player/easy/player/RemoteReward;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/player/easy/player/RemoteReward;

    iget-boolean v1, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    iget-boolean v3, p1, Lcom/player/easy/player/RemoteReward;->enabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    iget-boolean v3, p1, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    iget v3, p1, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    iget-object v3, p1, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    iget-object v3, p1, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    iget-object v3, p1, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    iget p1, p1, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAdDisplay()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    return v0
.end method

.method public final getAd_type()Lcom/player/easy/player/RemoteRewardAdType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    return v0
.end method

.method public final getExcludePkg()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    return-object v0
.end method

.method public final getExcludePkgConfig()Lcom/player/easy/player/RemoteReward;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    return-object v0
.end method

.method public final getHuawei_enable()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    return v0
.end method

.method public final getOnly_for_links()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    return-object v0
.end method

.method public final getReward_unit_id()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getShow_ad_every_n_min()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/player/easy/player/RemoteReward;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/player/RemoteReward;->enabled:Z

    iget-boolean v1, p0, Lcom/player/easy/player/RemoteReward;->huawei_enable:Z

    iget-object v2, p0, Lcom/player/easy/player/RemoteReward;->reward_unit_id:Ljava/lang/String;

    iget v3, p0, Lcom/player/easy/player/RemoteReward;->show_ad_every_n_min:I

    iget-object v4, p0, Lcom/player/easy/player/RemoteReward;->only_for_links:Ljava/util/List;

    iget-object v5, p0, Lcom/player/easy/player/RemoteReward;->ad_type:Lcom/player/easy/player/RemoteRewardAdType;

    iget-object v6, p0, Lcom/player/easy/player/RemoteReward;->excludePkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/player/easy/player/RemoteReward;->excludePkgConfig:Lcom/player/easy/player/RemoteReward;

    iget v8, p0, Lcom/player/easy/player/RemoteReward;->adDisplay:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteReward(enabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", huawei_enable="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", reward_unit_id="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", show_ad_every_n_min="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", only_for_links="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ad_type="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", excludePkg="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", excludePkgConfig="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adDisplay="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
