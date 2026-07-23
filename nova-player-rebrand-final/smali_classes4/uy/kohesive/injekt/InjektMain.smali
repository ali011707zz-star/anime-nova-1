.class public abstract Luy/kohesive/injekt/InjektMain;
.super Luy/kohesive/injekt/api/InjektScopedMain;
.source "Injekt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x0
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Luy/kohesive/injekt/InjektMain;",
        "Luy/kohesive/injekt/api/InjektScopedMain;",
        "()V",
        "injekt-core-compileKotlin"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-static {}, Luy/kohesive/injekt/InjektKt;->getInjekt()Luy/kohesive/injekt/api/InjektScope;

    move-result-object v0

    invoke-direct {p0, v0}, Luy/kohesive/injekt/api/InjektScopedMain;-><init>(Luy/kohesive/injekt/api/InjektScope;)V

    return-void
.end method
