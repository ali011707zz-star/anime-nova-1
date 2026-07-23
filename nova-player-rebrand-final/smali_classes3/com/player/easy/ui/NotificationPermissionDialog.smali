.class public final Lcom/player/easy/ui/NotificationPermissionDialog;
.super Lcom/player/easy/ui/BottomSheet;
.source "NotificationPermissionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/ui/NotificationPermissionDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0014\u001a\u00020\u0007H\u0016J\u0008\u0010\u0015\u001a\u00020\u0007H\u0016J\u0008\u0010\u0016\u001a\u00020\u0007H\u0016R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/player/easy/ui/NotificationPermissionDialog;",
        "Lcom/player/easy/ui/BottomSheet;",
        "context",
        "Landroid/content/Context;",
        "whenGranted",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V",
        "imageView",
        "Landroid/widget/ImageView;",
        "createCircleDrawable",
        "Landroid/graphics/drawable/ShapeDrawable;",
        "color",
        "",
        "size",
        "mayBeAccidentalDismiss",
        "showTime",
        "",
        "show",
        "cancel",
        "dismiss",
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
.field public static final Companion:Lcom/player/easy/ui/NotificationPermissionDialog$Companion;

.field private static final isRTL:Z = true


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private mayBeAccidentalDismiss:Z

.field private showTime:J

.field private whenGranted:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Z5x7TY5FuXg1eYBTY63nRy7qbvY(Lcom/player/easy/ui/NotificationPermissionDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/ui/NotificationPermissionDialog;->_init_$lambda$1(Lcom/player/easy/ui/NotificationPermissionDialog;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/ui/NotificationPermissionDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/ui/NotificationPermissionDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/ui/NotificationPermissionDialog;->Companion:Lcom/player/easy/ui/NotificationPermissionDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/player/easy/ui/BottomSheet;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->whenGranted:Lkotlin/jvm/functions/Function1;

    .line 68
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 71
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x48

    invoke-static {v4}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v5

    invoke-static {v4}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 74
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    sget v6, Lcom/player/easy/R$color;->colorAccentDark:I

    invoke-static {p1, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v4}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v4

    invoke-direct {p0, v6, v4}, Lcom/player/easy/ui/NotificationPermissionDialog;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    .line 75
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->imageView:Landroid/widget/ImageView;

    .line 80
    sget v4, Lcom/player/easy/R$drawable;->bell:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x24

    invoke-static {v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v7

    invoke-static {v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x6e

    invoke-static {v3}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    sget v2, Lcom/player/easy/R$color;->textColorPrimaryDark:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 90
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    const-string v2, "\u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u0625\u0634\u0639\u0627\u0631\u0627\u062a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x1e

    .line 93
    invoke-static {v2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v3

    invoke-static {v2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 95
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    invoke-virtual {p2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    sget v3, Lcom/player/easy/R$color;->textColorPrimaryDark:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 103
    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    sget v8, Lcom/player/easy/R$string;->app_name:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v10, "\u064a\u0631\u062c\u0649 \u0627\u0644\u0633\u0645\u0627\u062d \u0644\u062a\u0637\u0628\u064a\u0642"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v8, "\u0628\u0625\u0631\u0633\u0627\u0644 \u0625\u0634\u0639\u0627\u0631\u0627\u062a \u0625\u0644\u064a\u0643"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 113
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v8

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v10

    invoke-static {v2}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v2

    const/16 v11, 0x15

    invoke-static {v11}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v11

    invoke-virtual {v1, v8, v10, v2, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/player/easy/ui/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 124
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    const-string v2, "\u0627\u0633\u062a\u0645\u0631\u0627\u0631"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 128
    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 129
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    sget v2, Lcom/player/easy/R$color;->colorAccentDark:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    new-array v0, v0, [F

    const/high16 v2, 0x41000000    # 8.0f

    aput v2, v0, v7

    invoke-static {p1, v0}, Lcom/player/easy/ui/AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 130
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    new-instance p1, Lcom/player/easy/ui/NotificationPermissionDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/player/easy/ui/NotificationPermissionDialog$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/ui/NotificationPermissionDialog;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x30

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v0

    invoke-direct {p1, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 138
    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v2

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v3

    invoke-static {v0}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v0

    invoke-static {v9}, Lcom/player/easy/util/system/ContextExtensionsKt;->getDpToPx(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 139
    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/player/easy/ui/NotificationPermissionDialog;Landroid/view/View;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->whenGranted:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->whenGranted:Lkotlin/jvm/functions/Function1;

    .line 135
    invoke-virtual {p0}, Lcom/player/easy/ui/NotificationPermissionDialog;->dismiss()V

    return-void
.end method

.method private final createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    .line 143
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    int-to-float v1, p2

    .line 144
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 145
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 146
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 147
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 148
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->showTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->mayBeAccidentalDismiss:Z

    .line 162
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 166
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 167
    iget-object v0, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->whenGranted:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->whenGranted:Lkotlin/jvm/functions/Function1;

    .line 170
    iget-boolean v0, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->mayBeAccidentalDismiss:Z

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/player/easy/ui/NotificationPermissionDialog;->Companion:Lcom/player/easy/ui/NotificationPermissionDialog$Companion;

    invoke-virtual {v0}, Lcom/player/easy/ui/NotificationPermissionDialog$Companion;->askLater()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/player/easy/ui/BottomSheet;->show()V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/player/easy/ui/NotificationPermissionDialog;->showTime:J

    return-void
.end method
