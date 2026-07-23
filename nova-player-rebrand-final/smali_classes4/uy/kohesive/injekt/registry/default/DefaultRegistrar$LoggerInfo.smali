.class public final Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;
.super Ljava/lang/Object;
.source "DefaultRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoggerInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0080\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u00c6\u0003J\u001b\u0010\u0011\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u00c6\u0003JE\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u00052\u001a\u0008\u0002\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u00c6\u0001R#\u0010\u0007\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;",
        "",
        "forWhatType",
        "Ljava/lang/reflect/Type;",
        "nameFactory",
        "Lkotlin/Function1;",
        "",
        "classFactory",
        "Ljava/lang/Class;",
        "(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getClassFactory",
        "()Lkotlin/jvm/functions/Function1;",
        "getForWhatType",
        "()Ljava/lang/reflect/Type;",
        "getNameFactory",
        "component1",
        "component2",
        "component3",
        "copy",
        "injekt-core-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# instance fields
.field private final classFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final forWhatType:Ljava/lang/reflect/Type;

.field private final nameFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "forWhatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static bridge synthetic copy$default(Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;
    .locals 0

    .line 0
    if-nez p5, :cond_3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->copy(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: copy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final component1()Ljava/lang/reflect/Type;
    .locals 1

    .line 0
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final component2()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final component3()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final copy(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;"
        }
    .end annotation

    .line 0
    const-string v0, "forWhatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    invoke-direct {v0, p1, p2, p3}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;-><init>(Ljava/lang/reflect/Type;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    if-eqz v0, :cond_0

    check-cast p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;

    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    iget-object v1, p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    iget-object v1, p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getClassFactory()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getForWhatType()Ljava/lang/reflect/Type;
    .locals 1

    .line 35
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getNameFactory()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggerInfo(forWhatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->forWhatType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nameFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->nameFactory:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classFactory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$LoggerInfo;->classFactory:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
