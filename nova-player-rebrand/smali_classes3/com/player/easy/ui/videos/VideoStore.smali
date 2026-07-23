.class public final Lcom/player/easy/ui/videos/VideoStore;
.super Ljava/lang/Object;
.source "VideoStore.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/ui/videos/VideoStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/player/easy/ui/videos/VideoStore;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 02\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u00010B?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0011\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0000H\u0096\u0002J\u0006\u0010\u001c\u001a\u00020\u0008J\t\u0010\u001d\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0008H\u00c6\u0003J\t\u0010 \u001a\u00020\u0004H\u00c6\u0003J\t\u0010!\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0004H\u00c6\u0003J\t\u0010#\u001a\u00020\u0008H\u00c6\u0003JO\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008H\u00c6\u0001J\u0006\u0010%\u001a\u00020\u001aJ\u0013\u0010&\u001a\u00020\'2\u0008\u0010\u001b\u001a\u0004\u0018\u00010(H\u00d6\u0003J\t\u0010)\u001a\u00020\u001aH\u00d6\u0001J\t\u0010*\u001a\u00020\u0008H\u00d6\u0001J\u0016\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u001aR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0011\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\u00a8\u00061"
    }
    d2 = {
        "Lcom/player/easy/ui/videos/VideoStore;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "",
        "uri",
        "Landroid/net/Uri;",
        "name",
        "",
        "duration",
        "size",
        "date",
        "parentName",
        "<init>",
        "(JLandroid/net/Uri;Ljava/lang/String;JJJLjava/lang/String;)V",
        "getId",
        "()J",
        "getUri",
        "()Landroid/net/Uri;",
        "getName",
        "()Ljava/lang/String;",
        "getDuration",
        "getSize",
        "getDate",
        "getParentName",
        "compareTo",
        "",
        "other",
        "getExtension",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "describeContents",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/player/easy/ui/videos/VideoStore;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/player/easy/ui/videos/VideoStore$Companion;

.field private static sorting:I


# instance fields
.field private final date:J

.field private final duration:J

.field private final id:J

.field private final name:Ljava/lang/String;

.field private final parentName:Ljava/lang/String;

.field private final size:J

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/ui/videos/VideoStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/ui/videos/VideoStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/ui/videos/VideoStore;->Companion:Lcom/player/easy/ui/videos/VideoStore$Companion;

    new-instance v0, Lcom/player/easy/ui/videos/VideoStore$Creator;

    invoke-direct {v0}, Lcom/player/easy/ui/videos/VideoStore$Creator;-><init>()V

    sput-object v0, Lcom/player/easy/ui/videos/VideoStore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentName"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    .line 12
    iput-object p3, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    .line 13
    iput-object p4, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    .line 14
    iput-wide p5, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    .line 15
    iput-wide p7, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    .line 16
    iput-wide p9, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    .line 17
    iput-object p11, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSorting$cp()I
    .locals 1

    .line 8
    sget v0, Lcom/player/easy/ui/videos/VideoStore;->sorting:I

    return v0
.end method

.method public static final synthetic access$setSorting$cp(I)V
    .locals 0

    .line 8
    sput p0, Lcom/player/easy/ui/videos/VideoStore;->sorting:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/player/easy/ui/videos/VideoStore;JLandroid/net/Uri;Ljava/lang/String;JJJLjava/lang/String;ILjava/lang/Object;)Lcom/player/easy/ui/videos/VideoStore;
    .locals 12

    .line 0
    and-int/lit8 v0, p12, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p12, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p12, 0x4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    move-object v4, p1

    goto :goto_0

    :cond_2
    move-object/from16 v4, p4

    :goto_0
    and-int/lit8 p1, p12, 0x8

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    move-wide v5, p1

    goto :goto_1

    :cond_3
    move-wide/from16 v5, p5

    :goto_1
    and-int/lit8 p1, p12, 0x10

    if-eqz p1, :cond_4

    iget-wide p1, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    move-wide v7, p1

    goto :goto_2

    :cond_4
    move-wide/from16 v7, p7

    :goto_2
    and-int/lit8 p1, p12, 0x20

    if-eqz p1, :cond_5

    iget-wide p1, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    move-wide v9, p1

    goto :goto_3

    :cond_5
    move-wide/from16 v9, p9

    :goto_3
    and-int/lit8 p1, p12, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    move-object v11, p1

    :goto_4
    move-object v0, p0

    goto :goto_5

    :cond_6
    move-object/from16 v11, p11

    goto :goto_4

    :goto_5
    invoke-virtual/range {v0 .. v11}, Lcom/player/easy/ui/videos/VideoStore;->copy(JLandroid/net/Uri;Ljava/lang/String;JJJLjava/lang/String;)Lcom/player/easy/ui/videos/VideoStore;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/player/easy/ui/videos/VideoStore;)I
    .locals 5

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Lcom/player/easy/ui/videos/VideoStore;->sorting:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    const-string v3, "toLowerCase(...)"

    if-eqz v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 33
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    iget-wide v3, p1, Lcom/player/easy/ui/videos/VideoStore;->size:J

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_4

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 40
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    iget-wide v3, p1, Lcom/player/easy/ui/videos/VideoStore;->date:J

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    if-lez p1, :cond_4

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    move p1, v2

    goto :goto_2

    .line 52
    :cond_5
    invoke-virtual {p0}, Lcom/player/easy/ui/videos/VideoStore;->getExtension()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/player/easy/ui/videos/VideoStore;->getExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 56
    :goto_2
    sget v0, Lcom/player/easy/ui/videos/VideoStore;->sorting:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    mul-int/2addr p1, v2

    :cond_6
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/player/easy/ui/videos/VideoStore;

    invoke-virtual {p0, p1}, Lcom/player/easy/ui/videos/VideoStore;->compareTo(Lcom/player/easy/ui/videos/VideoStore;)I

    move-result p1

    return p1
.end method

.method public final component1()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    return-wide v0
.end method

.method public final component2()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLandroid/net/Uri;Ljava/lang/String;JJJLjava/lang/String;)Lcom/player/easy/ui/videos/VideoStore;
    .locals 13

    .line 0
    const-string v0, "uri"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentName"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/player/easy/ui/videos/VideoStore;

    move-wide v2, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v12}, Lcom/player/easy/ui/videos/VideoStore;-><init>(JLandroid/net/Uri;Ljava/lang/String;JJJLjava/lang/String;)V

    return-object v1
.end method

.method public final describeContents()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/player/easy/ui/videos/VideoStore;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/player/easy/ui/videos/VideoStore;

    iget-wide v3, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    iget-wide v5, p1, Lcom/player/easy/ui/videos/VideoStore;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    iget-wide v5, p1, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    iget-wide v5, p1, Lcom/player/easy/ui/videos/VideoStore;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    iget-wide v5, p1, Lcom/player/easy/ui/videos/VideoStore;->date:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    iget-object p1, p1, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDate()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    return-wide v0
.end method

.method public final getExtension()Ljava/lang/String;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    invoke-static {v0, v1}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    invoke-static {v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 0
    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    iget-object v2, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    iget-wide v6, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    iget-wide v8, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    iget-object v10, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VideoStore(id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", uri="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", date="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", parentName="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 0
    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/player/easy/ui/videos/VideoStore;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/player/easy/ui/videos/VideoStore;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/player/easy/ui/videos/VideoStore;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/player/easy/ui/videos/VideoStore;->parentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
