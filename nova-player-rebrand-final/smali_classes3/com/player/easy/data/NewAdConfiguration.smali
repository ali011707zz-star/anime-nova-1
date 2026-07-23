.class public final Lcom/player/easy/data/NewAdConfiguration;
.super Ljava/lang/Object;
.source "IpInformation.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/NewAdConfiguration$$serializer;,
        Lcom/player/easy/data/NewAdConfiguration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 -2\u00020\u0001:\u0002,-B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bBW\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\n\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u00c6\u0003J\u000f\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u00c6\u0003JG\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\rH\u00d6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001J%\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0001\u00a2\u0006\u0002\u0008+R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017\u00a8\u0006."
    }
    d2 = {
        "Lcom/player/easy/data/NewAdConfiguration;",
        "",
        "ads_enable",
        "",
        "default_ad_config",
        "Lcom/player/easy/data/AdType;",
        "default_huawei_ad_config",
        "configs",
        "",
        "huawei_configs",
        "<init>",
        "(ZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getAds_enable",
        "()Z",
        "getDefault_ad_config",
        "()Lcom/player/easy/data/AdType;",
        "getDefault_huawei_ad_config",
        "getConfigs",
        "()Ljava/util/List;",
        "getHuawei_configs",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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

.field public static final Companion:Lcom/player/easy/data/NewAdConfiguration$Companion;


# instance fields
.field private final ads_enable:Z

.field private final configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/data/AdType;",
            ">;"
        }
    .end annotation
.end field

.field private final default_ad_config:Lcom/player/easy/data/AdType;

.field private final default_huawei_ad_config:Lcom/player/easy/data/AdType;

.field private final huawei_configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/data/AdType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AcgGLz6UcRDLj6x2vObZJlLW_k4()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/NewAdConfiguration;->_childSerializers$_anonymous_$2()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$NL_FjeaCbyyAuaUk571ybtc3D5o()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/NewAdConfiguration;->_childSerializers$_anonymous_$1()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$TIP5ZXMV1vzGvzCL8J4dXKk6EsQ()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/NewAdConfiguration;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$c-re8Cl30QTunPshLzm2RzbIhcE()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/NewAdConfiguration;->_childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/player/easy/data/NewAdConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/NewAdConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/NewAdConfiguration;->Companion:Lcom/player/easy/data/NewAdConfiguration$Companion;

    .line 56
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v5, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/player/easy/data/NewAdConfiguration$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v5, 0x5

    new-array v5, v5, [Lkotlin/Lazy;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const/4 v1, 0x4

    aput-object v0, v5, v1

    sput-object v5, Lcom/player/easy/data/NewAdConfiguration;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 56
    sget-object p7, Lcom/player/easy/data/NewAdConfiguration$$serializer;->INSTANCE:Lcom/player/easy/data/NewAdConfiguration$$serializer;

    invoke-virtual {p7}, Lcom/player/easy/data/NewAdConfiguration$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    iput-object p3, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    iput-object p4, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    iput-object p5, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    iput-object p6, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/player/easy/data/AdType;",
            "Lcom/player/easy/data/AdType;",
            "Ljava/util/List<",
            "+",
            "Lcom/player/easy/data/AdType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/player/easy/data/AdType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "default_ad_config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default_huawei_ad_config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "huawei_configs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    .line 60
    iput-object p2, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    .line 61
    iput-object p3, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    .line 62
    iput-object p4, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    .line 63
    iput-object p5, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lcom/player/easy/data/AdType;->Companion:Lcom/player/easy/data/AdType$Companion;

    invoke-virtual {v0}, Lcom/player/easy/data/AdType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    sget-object v0, Lcom/player/easy/data/AdType;->Companion:Lcom/player/easy/data/AdType$Companion;

    invoke-virtual {v0}, Lcom/player/easy/data/AdType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$1()Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 0
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/player/easy/data/AdType;->Companion:Lcom/player/easy/data/AdType$Companion;

    invoke-virtual {v1}, Lcom/player/easy/data/AdType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method private static final synthetic _childSerializers$_anonymous_$2()Lkotlinx/serialization/KSerializer;
    .locals 2

    .line 0
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/player/easy/data/AdType;->Companion:Lcom/player/easy/data/AdType$Companion;

    invoke-virtual {v1}, Lcom/player/easy/data/AdType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    .line 56
    sget-object v0, Lcom/player/easy/data/NewAdConfiguration;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/player/easy/data/NewAdConfiguration;ZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/player/easy/data/NewAdConfiguration;
    .locals 0

    .line 0
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/player/easy/data/NewAdConfiguration;->copy(ZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;)Lcom/player/easy/data/NewAdConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_release(Lcom/player/easy/data/NewAdConfiguration;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 56
    sget-object v0, Lcom/player/easy/data/NewAdConfiguration;->$childSerializers:[Lkotlin/Lazy;

    iget-boolean v1, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v2, v0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    return v0
.end method

.method public final component2()Lcom/player/easy/data/AdType;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public final component3()Lcom/player/easy/data/AdType;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/data/AdType;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/data/AdType;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;)Lcom/player/easy/data/NewAdConfiguration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/player/easy/data/AdType;",
            "Lcom/player/easy/data/AdType;",
            "Ljava/util/List<",
            "+",
            "Lcom/player/easy/data/AdType;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/player/easy/data/AdType;",
            ">;)",
            "Lcom/player/easy/data/NewAdConfiguration;"
        }
    .end annotation

    .line 0
    const-string v0, "default_ad_config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default_huawei_ad_config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "huawei_configs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/player/easy/data/NewAdConfiguration;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/player/easy/data/NewAdConfiguration;-><init>(ZLcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/player/easy/data/NewAdConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/player/easy/data/NewAdConfiguration;

    iget-boolean v1, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    iget-boolean v3, p1, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    iget-object v3, p1, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    iget-object v3, p1, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    iget-object v3, p1, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    iget-object p1, p1, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAds_enable()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    return v0
.end method

.method public final getConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/data/AdType;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    return-object v0
.end method

.method public final getDefault_ad_config()Lcom/player/easy/data/AdType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public final getDefault_huawei_ad_config()Lcom/player/easy/data/AdType;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public final getHuawei_configs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/data/AdType;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/data/NewAdConfiguration;->ads_enable:Z

    iget-object v1, p0, Lcom/player/easy/data/NewAdConfiguration;->default_ad_config:Lcom/player/easy/data/AdType;

    iget-object v2, p0, Lcom/player/easy/data/NewAdConfiguration;->default_huawei_ad_config:Lcom/player/easy/data/AdType;

    iget-object v3, p0, Lcom/player/easy/data/NewAdConfiguration;->configs:Ljava/util/List;

    iget-object v4, p0, Lcom/player/easy/data/NewAdConfiguration;->huawei_configs:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NewAdConfiguration(ads_enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", default_ad_config="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", default_huawei_ad_config="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", huawei_configs="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
