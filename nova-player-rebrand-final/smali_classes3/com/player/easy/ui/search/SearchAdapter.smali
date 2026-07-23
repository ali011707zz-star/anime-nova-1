.class public final Lcom/player/easy/ui/search/SearchAdapter;
.super Leu/davidea/flexibleadapter/FlexibleAdapter;
.source "SearchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/davidea/flexibleadapter/FlexibleAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\'\u001a\u00020(2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\"H\u0016J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0002R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0011R\u001f\u0010\u0016\u001a\u00060\u0017j\u0002`\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0015\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001c\u001a\u00020\u001d8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0015\u001a\u0004\u0008\u001e\u0010\u001fR \u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006,"
    }
    d2 = {
        "Lcom/player/easy/ui/search/SearchAdapter;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter;",
        "Lcom/player/easy/ui/search/SearchItem;",
        "fragment",
        "Lcom/player/easy/ui/search/SearchFragment;",
        "<init>",
        "(Lcom/player/easy/ui/search/SearchFragment;)V",
        "currentDate",
        "Ljava/util/Date;",
        "getCurrentDate",
        "()Ljava/util/Date;",
        "arLocale",
        "Ljava/util/Locale;",
        "kotlin.jvm.PlatformType",
        "currentYearDateFormat",
        "Ljava/text/SimpleDateFormat;",
        "getCurrentYearDateFormat",
        "()Ljava/text/SimpleDateFormat;",
        "yearDateFormat",
        "getYearDateFormat",
        "yearDateFormat$delegate",
        "Lkotlin/Lazy;",
        "formatBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "getFormatBuilder",
        "()Ljava/lang/StringBuilder;",
        "formatBuilder$delegate",
        "formatter",
        "Ljava/util/Formatter;",
        "getFormatter",
        "()Ljava/util/Formatter;",
        "formatter$delegate",
        "items",
        "",
        "getItems",
        "()Ljava/util/List;",
        "setItems",
        "(Ljava/util/List;)V",
        "updateDataSet",
        "",
        "indexOf",
        "",
        "item",
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


# instance fields
.field private final arLocale:Ljava/util/Locale;

.field private final currentDate:Ljava/util/Date;

.field private final currentYearDateFormat:Ljava/text/SimpleDateFormat;

.field private final formatBuilder$delegate:Lkotlin/Lazy;

.field private final formatter$delegate:Lkotlin/Lazy;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/player/easy/ui/search/SearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private final yearDateFormat$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$BL2j70ydNPGZQ0NY_Qro97SzhH0()Ljava/lang/StringBuilder;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/ui/search/SearchAdapter;->formatBuilder_delegate$lambda$0()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$OcrppzNu5DXOQRx19_6uq0HBErY(Lcom/player/easy/ui/search/SearchAdapter;)Ljava/util/Formatter;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/ui/search/SearchAdapter;->formatter_delegate$lambda$0(Lcom/player/easy/ui/search/SearchAdapter;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RMVFRaBWNjVBFz_O7UDBGCTVcEI(Lcom/player/easy/ui/search/SearchAdapter;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/ui/search/SearchAdapter;->yearDateFormat_delegate$lambda$0(Lcom/player/easy/ui/search/SearchAdapter;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/player/easy/ui/search/SearchFragment;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-direct {p0, v0, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;Z)V

    .line 9
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/search/SearchAdapter;->currentDate:Ljava/util/Date;

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/search/SearchAdapter;->arLocale:Ljava/util/Locale;

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE\u060c dd MMM"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->currentYearDateFormat:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance p1, Lcom/player/easy/ui/search/SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/player/easy/ui/search/SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/search/SearchAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/search/SearchAdapter;->yearDateFormat$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lcom/player/easy/ui/search/SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/player/easy/ui/search/SearchAdapter$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/search/SearchAdapter;->formatBuilder$delegate:Lkotlin/Lazy;

    .line 15
    new-instance p1, Lcom/player/easy/ui/search/SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/player/easy/ui/search/SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/ui/search/SearchAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/search/SearchAdapter;->formatter$delegate:Lkotlin/Lazy;

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/player/easy/ui/search/SearchAdapter;->items:Ljava/util/List;

    return-void
.end method

.method private static final formatBuilder_delegate$lambda$0()Ljava/lang/StringBuilder;
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method private static final formatter_delegate$lambda$0(Lcom/player/easy/ui/search/SearchAdapter;)Ljava/util/Formatter;
    .locals 2

    .line 15
    new-instance v0, Ljava/util/Formatter;

    invoke-virtual {p0}, Lcom/player/easy/ui/search/SearchAdapter;->getFormatBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/player/easy/ui/search/SearchAdapter;->arLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static final yearDateFormat_delegate$lambda$0(Lcom/player/easy/ui/search/SearchAdapter;)Ljava/text/SimpleDateFormat;
    .locals 2

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/player/easy/ui/search/SearchAdapter;->arLocale:Ljava/util/Locale;

    const-string v1, "dd MMM, yyyy"

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public final getCurrentDate()Ljava/util/Date;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->currentDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getCurrentYearDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->currentYearDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final getFormatBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->formatBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final getFormatter()Ljava/util/Formatter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->formatter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Formatter;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/search/SearchItem;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getYearDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->yearDateFormat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final indexOf(Lcom/player/easy/ui/search/SearchItem;)I
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/search/SearchItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/player/easy/ui/search/SearchAdapter;->items:Ljava/util/List;

    return-void
.end method

.method public updateDataSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/player/easy/ui/search/SearchItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/player/easy/ui/search/SearchAdapter;->items:Ljava/util/List;

    .line 21
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateDataSet(Ljava/util/List;)V

    return-void
.end method
