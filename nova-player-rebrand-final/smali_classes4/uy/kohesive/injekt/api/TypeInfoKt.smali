.class public final Luy/kohesive/injekt/api/TypeInfoKt;
.super Ljava/lang/Object;
.source "TypeInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001b\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0086\u0008\u001a\u001b\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\u0086\u0008\u001a\u0012\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006*\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "fullType",
        "Luy/kohesive/injekt/api/FullTypeReference;",
        "T",
        "",
        "typeRef",
        "erasedType",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Type;",
        "injekt-api-compileKotlin"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# direct methods
.method public static final erasedType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Luy/kohesive/injekt/api/TypeInfoKt;->erasedType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 11
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Luy/kohesive/injekt/api/TypeInfoKt;->erasedType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 12
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_5

    .line 19
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 20
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Luy/kohesive/injekt/api/TypeInfoKt;->erasedType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not get here."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not sure what to do here yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final fullType()Luy/kohesive/injekt/api/FullTypeReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Luy/kohesive/injekt/api/FullTypeReference<",
            "TT;>;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/TypeInfoKt$fullType$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/TypeInfoKt$fullType$1;-><init>()V

    return-object v0
.end method

.method private static final typeRef()Luy/kohesive/injekt/api/FullTypeReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Luy/kohesive/injekt/api/FullTypeReference<",
            "TT;>;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Luy/kohesive/injekt/api/TypeInfoKt$typeRef$1;

    invoke-direct {v0}, Luy/kohesive/injekt/api/TypeInfoKt$typeRef$1;-><init>()V

    return-object v0
.end method
