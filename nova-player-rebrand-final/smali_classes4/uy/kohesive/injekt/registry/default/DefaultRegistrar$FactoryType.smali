.class final enum Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;
.super Ljava/lang/Enum;
.source "DefaultRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy/kohesive/injekt/registry/default/DefaultRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FactoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;",
        "",
        "(Ljava/lang/String;I)V",
        "SINGLETON",
        "MULTI",
        "MULTIKEYED",
        "THREAD",
        "THREADKEYED",
        "injekt-core-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

.field public static final enum MULTI:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

.field public static final enum MULTIKEYED:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

.field public static final enum SINGLETON:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

.field public static final enum THREAD:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

.field public static final enum THREADKEYED:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 0
    new-instance v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    const-string v1, "SINGLETON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->SINGLETON:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    new-instance v1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    const-string v3, "MULTI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->MULTI:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    new-instance v3, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    const-string v5, "MULTIKEYED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->MULTIKEYED:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    new-instance v5, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    const-string v7, "THREAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->THREAD:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    new-instance v7, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    const-string v9, "THREADKEYED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->THREADKEYED:Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    const/4 v9, 0x5

    new-array v9, v9, [Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->$VALUES:[Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;
    .locals 1

    .line 0
    const-class v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    return-object p0
.end method

.method public static values()[Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;
    .locals 1

    .line 0
    sget-object v0, Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->$VALUES:[Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    invoke-virtual {v0}, [Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luy/kohesive/injekt/registry/default/DefaultRegistrar$FactoryType;

    return-object v0
.end method
