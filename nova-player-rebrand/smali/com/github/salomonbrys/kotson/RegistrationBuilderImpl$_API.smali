.class public final enum Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;
.super Ljava/lang/Enum;
.source "GsonBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "_API"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0084\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;",
        "",
        "(Ljava/lang/String;I)V",
        "SD",
        "RW",
        "kotson_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

.field public static final enum RW:Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

.field public static final enum SD:Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    const-string v1, "SD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;->SD:Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    new-instance v1, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    const-string v3, "RW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;->RW:Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;->$VALUES:[Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;
    .locals 1

    .line 0
    const-class v0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    return-object p0
.end method

.method public static values()[Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;
    .locals 1

    .line 0
    sget-object v0, Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;->$VALUES:[Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    invoke-virtual {v0}, [Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/salomonbrys/kotson/RegistrationBuilderImpl$_API;

    return-object v0
.end method
