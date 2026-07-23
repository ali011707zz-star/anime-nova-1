.class public final synthetic Landroidx/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-static {p1}, Landroidx/media3/extractor/mp4/Mp4Extractor;->$r8$lambda$xLjHse2QhjdCXSXD24V8tl0dStk(Landroidx/media3/container/MdtaMetadataEntry;)Z

    move-result p1

    return p1
.end method
