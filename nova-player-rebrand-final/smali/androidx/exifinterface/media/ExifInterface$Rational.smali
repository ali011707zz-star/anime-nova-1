.class Landroidx/exifinterface/media/ExifInterface$Rational;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rational"
.end annotation


# instance fields
.field public final denominator:J

.field public final numerator:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 3

    .line 3190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 3193
    iput-wide v0, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    const-wide/16 p1, 0x1

    .line 3194
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    return-void

    .line 3197
    :cond_0
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    .line 3198
    iput-wide p3, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    return-void
.end method

.method synthetic constructor <init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V
    .locals 0

    .line 3186
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public calculate()D
    .locals 4

    .line 3243
    iget-wide v0, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
