.class public abstract Lcom/facebook/ads/redexgen/X/Sg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1666
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5dJOCi5t"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ElxVODxrKGpjZndubW1J77FnKIhSKHYN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "soy1HjiCChRoNLbRiMG0ONMXcD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jty4styG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qizyqn1jZat7HSG1Q7H23Ody908"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FRg8IeQHaCBN0Pxo0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "h8pKjD8zMvQPgPuOzhwvVUtEvF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "a7oVZcxMQNrl1fZi2h6OeAZDf6QHjYYV"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sg;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static varargs A00(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64206
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64207
    .local p0, "ex":Ljava/lang/Exception;
    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 64208
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64209
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :catch_0
    const/4 p2, 0x0

    sget-object p1, Lcom/facebook/ads/redexgen/X/Sg;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object p0, p1, v0

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object p1, Lcom/facebook/ads/redexgen/X/Sg;->A00:[Ljava/lang/String;

    const-string p0, "Wp91UfiY68my4gPNmlIjqqdWX7WJ726D"

    const/4 v0, 0x7

    aput-object p0, p1, v0

    const-string p0, "UI7dA5vfWz5Ps8yQ7SrAKT8QjM9H5yDE"

    const/4 v0, 0x1

    aput-object p0, p1, v0

    return-object p2
.end method

.method public static varargs A02(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 64210
    .local p4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 64211
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sg;->A01(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64212
    .end local p0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p0, "ex":Ljava/lang/ClassNotFoundException;
    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
