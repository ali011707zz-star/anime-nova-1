.class public abstract Lj$/util/stream/l4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget v0, Lj$/util/stream/Z2;->t:I

    sget v1, Lj$/util/stream/Z2;->u:I

    or-int/2addr v1, v0

    sput v1, Lj$/util/stream/l4;->a:I

    .line 52
    sput v0, Lj$/util/stream/l4;->b:I

    return-void
.end method
