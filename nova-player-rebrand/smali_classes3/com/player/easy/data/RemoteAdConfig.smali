.class public final Lcom/player/easy/data/RemoteAdConfig;
.super Ljava/lang/Object;
.source "IpInformation.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/data/RemoteAdConfig$$serializer;,
        Lcom/player/easy/data/RemoteAdConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0002 !B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B/\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0001\u00a2\u0006\u0002\u0008\u001fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Lcom/player/easy/data/RemoteAdConfig;",
        "",
        "huawei",
        "Lcom/player/easy/data/AdType;",
        "play",
        "<init>",
        "(Lcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getHuawei",
        "()Lcom/player/easy/data/AdType;",
        "getPlay",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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

.field public static final Companion:Lcom/player/easy/data/RemoteAdConfig$Companion;


# instance fields
.field private final huawei:Lcom/player/easy/data/AdType;

.field private final play:Lcom/player/easy/data/AdType;


# direct methods
.method public static synthetic $r8$lambda$4v7Wt0QDBOyOWYBr24g9JkvHfaU()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/RemoteAdConfig;->_childSerializers$_anonymous_$0()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZyrD_gt52oici0LXJcY2ivUOgvE()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/data/RemoteAdConfig;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/player/easy/data/RemoteAdConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/data/RemoteAdConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/data/RemoteAdConfig;->Companion:Lcom/player/easy/data/RemoteAdConfig$Companion;

    .line 54
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/player/easy/data/RemoteAdConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/player/easy/data/RemoteAdConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    new-instance v2, Lcom/player/easy/data/RemoteAdConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/player/easy/data/RemoteAdConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/player/easy/data/RemoteAdConfig;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 54
    sget-object p4, Lcom/player/easy/data/RemoteAdConfig$$serializer;->INSTANCE:Lcom/player/easy/data/RemoteAdConfig$$serializer;

    invoke-virtual {p4}, Lcom/player/easy/data/RemoteAdConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    iput-object p3, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    return-void
.end method

.method public constructor <init>(Lcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;)V
    .locals 1

    const-string v0, "huawei"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    iput-object p2, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

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

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    .line 54
    sget-object v0, Lcom/player/easy/data/RemoteAdConfig;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/player/easy/data/RemoteAdConfig;Lcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;ILjava/lang/Object;)Lcom/player/easy/data/RemoteAdConfig;
    .locals 0

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/player/easy/data/RemoteAdConfig;->copy(Lcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;)Lcom/player/easy/data/RemoteAdConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_release(Lcom/player/easy/data/RemoteAdConfig;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 54
    sget-object v0, Lcom/player/easy/data/RemoteAdConfig;->$childSerializers:[Lkotlin/Lazy;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/player/easy/data/AdType;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public final component2()Lcom/player/easy/data/AdType;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public final copy(Lcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;)Lcom/player/easy/data/RemoteAdConfig;
    .locals 1

    .line 0
    const-string v0, "huawei"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/player/easy/data/RemoteAdConfig;

    invoke-direct {v0, p1, p2}, Lcom/player/easy/data/RemoteAdConfig;-><init>(Lcom/player/easy/data/AdType;Lcom/player/easy/data/AdType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/player/easy/data/RemoteAdConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/player/easy/data/RemoteAdConfig;

    iget-object v1, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    iget-object v3, p1, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    iget-object p1, p1, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHuawei()Lcom/player/easy/data/AdType;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public final getPlay()Lcom/player/easy/data/AdType;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/player/easy/data/RemoteAdConfig;->huawei:Lcom/player/easy/data/AdType;

    iget-object v1, p0, Lcom/player/easy/data/RemoteAdConfig;->play:Lcom/player/easy/data/AdType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteAdConfig(huawei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", play="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
