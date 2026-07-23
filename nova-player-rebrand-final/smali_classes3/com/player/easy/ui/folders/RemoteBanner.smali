.class public final Lcom/player/easy/ui/folders/RemoteBanner;
.super Ljava/lang/Object;
.source "RemoteBanner.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/ui/folders/RemoteBanner$$serializer;,
        Lcom/player/easy/ui/folders/RemoteBanner$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 $2\u00020\u0001:\u0002#$B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B5\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0007\u0010\rJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\nH\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0001\u00a2\u0006\u0002\u0008\"R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006%"
    }
    d2 = {
        "Lcom/player/easy/ui/folders/RemoteBanner;",
        "",
        "show",
        "",
        "banner_unit_id",
        "",
        "huawei_enable",
        "<init>",
        "(ZLjava/lang/String;Z)V",
        "seen0",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IZLjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getShow",
        "()Z",
        "getBanner_unit_id",
        "()Ljava/lang/String;",
        "getHuawei_enable",
        "component1",
        "component2",
        "component3",
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
.field public static final Companion:Lcom/player/easy/ui/folders/RemoteBanner$Companion;


# instance fields
.field private final banner_unit_id:Ljava/lang/String;

.field private final huawei_enable:Z

.field private final show:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/ui/folders/RemoteBanner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/ui/folders/RemoteBanner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/ui/folders/RemoteBanner;->Companion:Lcom/player/easy/ui/folders/RemoteBanner$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 5
    sget-object p5, Lcom/player/easy/ui/folders/RemoteBanner$$serializer;->INSTANCE:Lcom/player/easy/ui/folders/RemoteBanner$$serializer;

    invoke-virtual {p5}, Lcom/player/easy/ui/folders/RemoteBanner$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    iput-object p3, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "banner_unit_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    iput-object p2, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/player/easy/ui/folders/RemoteBanner;ZLjava/lang/String;ZILjava/lang/Object;)Lcom/player/easy/ui/folders/RemoteBanner;
    .locals 0

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/player/easy/ui/folders/RemoteBanner;->copy(ZLjava/lang/String;Z)Lcom/player/easy/ui/folders/RemoteBanner;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$app_release(Lcom/player/easy/ui/folders/RemoteBanner;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-object v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    iget-boolean p0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    return v0
.end method

.method public final copy(ZLjava/lang/String;Z)Lcom/player/easy/ui/folders/RemoteBanner;
    .locals 1

    .line 0
    const-string v0, "banner_unit_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/player/easy/ui/folders/RemoteBanner;

    invoke-direct {v0, p1, p2, p3}, Lcom/player/easy/ui/folders/RemoteBanner;-><init>(ZLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/player/easy/ui/folders/RemoteBanner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/player/easy/ui/folders/RemoteBanner;

    iget-boolean v1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    iget-boolean v3, p1, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    iget-boolean p1, p1, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBanner_unit_id()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getHuawei_enable()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    return v0
.end method

.method public final getShow()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 0
    iget-boolean v0, p0, Lcom/player/easy/ui/folders/RemoteBanner;->show:Z

    iget-object v1, p0, Lcom/player/easy/ui/folders/RemoteBanner;->banner_unit_id:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/player/easy/ui/folders/RemoteBanner;->huawei_enable:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteBanner(show="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", banner_unit_id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", huawei_enable="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
