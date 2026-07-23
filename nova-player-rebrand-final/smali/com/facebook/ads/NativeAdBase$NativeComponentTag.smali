.class public final enum Lcom/facebook/ads/NativeAdBase$NativeComponentTag;
.super Ljava/lang/Enum;
.source "NativeAdBase.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeComponentTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/NativeAdBase$NativeComponentTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_BODY:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_CHOICES_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_COVER_IMAGE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_MEDIA:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_OPTIONS_VIEW:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_SUBTITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

.field public static final enum AD_TITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;


# direct methods
.method private static synthetic $values()[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;
    .locals 3

    const/16 v0, 0xa

    .line 162
    new-array v0, v0, [Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_TITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_COVER_IMAGE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SUBTITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_BODY:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CHOICES_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_OPTIONS_VIEW:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_MEDIA:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 164
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_ICON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 165
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_TITLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_TITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 166
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_COVER_IMAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_COVER_IMAGE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 167
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_SUBTITLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SUBTITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 168
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_BODY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_BODY:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 169
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_CALL_TO_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 170
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_SOCIAL_CONTEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 171
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_CHOICES_ICON"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CHOICES_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 172
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_OPTIONS_VIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_OPTIONS_VIEW:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 173
    new-instance v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    const-string v1, "AD_MEDIA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_MEDIA:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    .line 162
    invoke-static {}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->$values()[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->$VALUES:[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeComponentTagApi()Lcom/facebook/ads/internal/api/NativeComponentTagApi;

    move-result-object v0

    .line 179
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/internal/api/NativeComponentTagApi;->tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeComponentTag;
    .locals 1

    .line 162
    const-class v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;
    .locals 1

    .line 162
    sget-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->$VALUES:[Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    return-object v0
.end method
