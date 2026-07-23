.class public final Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;
.super Ljava/lang/Object;
.source "DefaultRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instance"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0001H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0001H\u00c6\u0001R\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;",
        "",
        "forWhatType",
        "Ljava/lang/reflect/Type;",
        "forKey",
        "(Ljava/lang/reflect/Type;Ljava/lang/Object;)V",
        "getForKey",
        "()Ljava/lang/Object;",
        "getForWhatType",
        "()Ljava/lang/reflect/Type;",
        "component1",
        "component2",
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
.field private final forKey:Ljava/lang/Object;

.field private final forWhatType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "forWhatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic copy$default(Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;Ljava/lang/reflect/Type;Ljava/lang/Object;ILjava/lang/Object;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;
    .locals 0

    .line 0
    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->copy(Ljava/lang/reflect/Type;Ljava/lang/Object;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: copy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final component1()Ljava/lang/reflect/Type;
    .locals 1

    .line 0
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/reflect/Type;Ljava/lang/Object;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;
    .locals 1

    .line 0
    const-string v0, "forWhatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;

    invoke-direct {v0, p1, p2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;

    if-eqz v0, :cond_0

    check-cast p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;

    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    iget-object v1, p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

    iget-object p1, p1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

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

.method public final getForKey()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

    return-object v0
.end method

.method public final getForWhatType()Ljava/lang/reflect/Type;
    .locals 1

    .line 18
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instance(forWhatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forWhatType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$Instance;->forKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
