.class public abstract Ltimber/log/Timber;
.super Ljava/lang/Object;
.source "Timber.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltimber/log/Timber$Tree;,
        Ltimber/log/Timber$Forest;
    }
.end annotation


# static fields
.field public static final Forest:Ltimber/log/Timber$Forest;

.field private static volatile treeArray:[Ltimber/log/Timber$Tree;

.field private static final trees:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltimber/log/Timber$Forest;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltimber/log/Timber;->trees:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 453
    new-array v0, v0, [Ltimber/log/Timber$Tree;

    sput-object v0, Ltimber/log/Timber;->treeArray:[Ltimber/log/Timber$Tree;

    return-void
.end method

.method public static final synthetic access$getTreeArray$cp()[Ltimber/log/Timber$Tree;
    .locals 1

    .line 14
    sget-object v0, Ltimber/log/Timber;->treeArray:[Ltimber/log/Timber$Tree;

    return-object v0
.end method
