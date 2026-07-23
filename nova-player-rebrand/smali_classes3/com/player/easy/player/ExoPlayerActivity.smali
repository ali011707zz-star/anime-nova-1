.class public final Lcom/player/easy/player/ExoPlayerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExoPlayerActivity.kt"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/ui/TimeBar$OnScrubListener;
.implements Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/player/easy/player/ExoPlayerActivity$Companion;,
        Lcom/player/easy/player/ExoPlayerActivity$Header;,
        Lcom/player/easy/player/ExoPlayerActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00f4\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004\u00f4\u0001\u00f5\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u008b\u0001\u001a\u00030\u008c\u00012\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0014JH\u0010\u008f\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u0090\u0001\u001a\u00020`2!\u0010\u0091\u0001\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010^\u0012\u0004\u0012\u00020/0]0\\0[2\u0007\u0010\u0092\u0001\u001a\u00020/2\t\u0008\u0002\u0010\u0093\u0001\u001a\u00020/J\n\u0010\u0094\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u0095\u0001\u001a\u00030\u008c\u0001H\u0007J\u0013\u0010\u0096\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u0097\u0001\u001a\u00020/H\u0016J\u0013\u0010\u0098\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u0099\u0001\u001a\u00020BH\u0002J\n\u0010\u009a\u0001\u001a\u00030\u008c\u0001H\u0002J\u0011\u0010\u009b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u009c\u0001\u001a\u000201J\n\u0010\u009d\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u009e\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u009f\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00a2\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00a3\u0001\u001a\u00030\u008c\u0001H\u0002J\u0014\u0010\u00a4\u0001\u001a\u00030\u008c\u00012\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001H\u0002J\u001a\u0010\u00a7\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00a8\u0001\u001a\u0002082\u0007\u0010\u009c\u0001\u001a\u000201J\u001a\u0010\u00a9\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00a8\u0001\u001a\u0002082\u0007\u0010\u009c\u0001\u001a\u000201J)\u0010\u00aa\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00ab\u0001\u001a\u0002052\u0007\u0010\u00ac\u0001\u001a\u0002052\u000b\u0008\u0002\u0010\u00ad\u0001\u001a\u0004\u0018\u000105H\u0002J\u0011\u0010\u00b0\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00b1\u0001\u001a\u00020/J\t\u0010\u00b2\u0001\u001a\u00020/H\u0002J\u0013\u0010\u00b3\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00b4\u0001\u001a\u000201H\u0002J\n\u0010\u00b5\u0001\u001a\u00030\u008c\u0001H\u0014J\n\u0010\u00b6\u0001\u001a\u00030\u008c\u0001H\u0014J\n\u0010\u00b7\u0001\u001a\u00030\u008c\u0001H\u0014J\n\u0010\u00b8\u0001\u001a\u00030\u008c\u0001H\u0014J\n\u0010\u00b9\u0001\u001a\u00030\u008c\u0001H\u0014J\u001e\u0010\u00ba\u0001\u001a\u00030\u008c\u00012\u0008\u0010\u00bb\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u00bc\u0001\u001a\u00030\u00bd\u0001H\u0016J\u0013\u0010\u00be\u0001\u001a\u00020/2\u0008\u0010\u00bf\u0001\u001a\u00030\u00c0\u0001H\u0002J\n\u0010\u00c1\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00c2\u0001\u001a\u00030\u00c3\u0001H\u0002J\t\u0010\u00c4\u0001\u001a\u00020{H\u0002J\n\u0010\u00c5\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00c6\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00c7\u0001\u001a\u00030\u008c\u0001H\u0002J\u0013\u0010\u00c8\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00c9\u0001\u001a\u000201H\u0017J\n\u0010\u00ca\u0001\u001a\u00030\u008c\u0001H\u0002J\t\u0010\u00cb\u0001\u001a\u00020/H\u0002J\n\u0010\u00cc\u0001\u001a\u00030\u008c\u0001H\u0002J\t\u0010\u00cd\u0001\u001a\u00020/H\u0002J\u0013\u0010\u00ce\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00cf\u0001\u001a\u00020/H\u0002J\n\u0010\u00d0\u0001\u001a\u00030\u008c\u0001H\u0002J\u0013\u0010\u00d1\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00d2\u0001\u001a\u00020/H\u0016J\u0014\u0010\u00d7\u0001\u001a\u00030\u008c\u00012\u0008\u0010\u00d8\u0001\u001a\u00030\u00d9\u0001H\u0016J\n\u0010\u00da\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00db\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00dc\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00dd\u0001\u001a\u00030\u008c\u0001H\u0002J\n\u0010\u00de\u0001\u001a\u00030\u008c\u0001H\u0002J\u001d\u0010\u00df\u0001\u001a\u00030\u008c\u00012\u0008\u0010\u00e0\u0001\u001a\u00030\u00e1\u00012\u0007\u0010\u009c\u0001\u001a\u000203H\u0016J\u001d\u0010\u00e2\u0001\u001a\u00030\u008c\u00012\u0008\u0010\u00e0\u0001\u001a\u00030\u00e1\u00012\u0007\u0010\u009c\u0001\u001a\u000203H\u0016J&\u0010\u00e3\u0001\u001a\u00030\u008c\u00012\u0008\u0010\u00e0\u0001\u001a\u00030\u00e1\u00012\u0007\u0010\u009c\u0001\u001a\u0002032\u0007\u0010\u00e4\u0001\u001a\u00020/H\u0016J-\u0010\u00e5\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u00e6\u0001\u001a\u00020B2\u0007\u0010\u00e7\u0001\u001a\u00020B2\t\u0010\u00e8\u0001\u001a\u0004\u0018\u00010/H\u0016\u00a2\u0006\u0003\u0010\u00e9\u0001J\u001c\u0010\u00ea\u0001\u001a\u0004\u0018\u0001052\u0008\u0010\u00eb\u0001\u001a\u00030\u00ec\u00012\u0007\u0010\u00ed\u0001\u001a\u00020QJ \u0010\u00ee\u0001\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050g2\t\u0010\u00ef\u0001\u001a\u0004\u0018\u000105H\u0002J\u0017\u0010\u00f0\u0001\u001a\u00030\u008c\u0001*\u00020\u00182\u0007\u0010\u0099\u0001\u001a\u00020/H\u0002J\u0017\u0010\u00f0\u0001\u001a\u00030\u008c\u0001*\u00020\u00162\u0007\u0010\u0099\u0001\u001a\u00020/H\u0002J\u0016\u0010\u00f1\u0001\u001a\u0005\u0018\u00010\u00f2\u00012\u0008\u0010\u00eb\u0001\u001a\u00030\u00ec\u0001H\u0002J\u001c\u0010\u00f3\u0001\u001a\u00020/2\u0008\u0010\u00eb\u0001\u001a\u00030\u00ec\u00012\u0007\u0010\u00ed\u0001\u001a\u00020QH\u0002R#\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010)\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\r\u001a\u0004\u0008+\u0010,R\u000e\u0010.\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u000203X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u00106\u001a\u0016\u0012\u0004\u0012\u000208\u0018\u000107j\n\u0012\u0004\u0012\u000208\u0018\u0001`9X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u000205X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u000203X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u000203X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020?X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010@\u001a\u0008\u0012\u0004\u0012\u00020B0AX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010CR&\u0010D\u001a\r\u0012\t\u0012\u000705\u00a2\u0006\u0002\u0008F0E8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010\r\u001a\u0004\u0008G\u0010HR\u000e\u0010J\u001a\u000201X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010K\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010\r\u001a\u0004\u0008L\u0010MR\u000e\u0010O\u001a\u000205X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020QX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u000205X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010Z\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010^\u0012\u0004\u0012\u00020/0]0\\0[X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u0004\u0018\u00010`X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010a\u001a\u000205X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u001a\u0010f\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u0002050gX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010h\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020jX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010k\u001a\u00020l8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008o\u0010\r\u001a\u0004\u0008m\u0010nR\u001b\u0010p\u001a\u00020q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008t\u0010\r\u001a\u0004\u0008r\u0010sR\u000e\u0010u\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010v\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010w\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010x\u001a\u00020yX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010z\u001a\u0004\u0018\u00010{X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010|\u001a\u00020}8FX\u0086\u0084\u0002\u00a2\u0006\r\n\u0005\u0008\u0080\u0001\u0010\r\u001a\u0004\u0008~\u0010\u007fR \u0010\u0081\u0001\u001a\u00030\u0082\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0085\u0001\u0010\r\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u000f\u0010\u0086\u0001\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0087\u0001\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0088\u0001\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u00a1\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u00ae\u0001\u001a\t\u0012\u0004\u0012\u0002050\u00af\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u00d3\u0001\u001a\u000201X\u0086\u000e\u00a2\u0006\u0011\n\u0000\u001a\u0005\u0008\u00d4\u0001\u0010M\"\u0006\u0008\u00d5\u0001\u0010\u00d6\u0001\u00a8\u0006\u00f6\u0001"
    }
    d2 = {
        "Lcom/player/easy/player/ExoPlayerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroidx/media3/common/Player$Listener;",
        "Landroidx/media3/ui/TimeBar$OnScrubListener;",
        "Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;",
        "<init>",
        "()V",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getPreferences",
        "()Landroid/content/SharedPreferences;",
        "preferences$delegate",
        "Lkotlin/Lazy;",
        "prefs",
        "Lcom/player/easy/data/preference/PreferencesHelper;",
        "getPrefs",
        "()Lcom/player/easy/data/preference/PreferencesHelper;",
        "prefs$delegate",
        "exoBuffering",
        "Landroid/widget/ProgressBar;",
        "trackSelection",
        "Landroid/widget/TextView;",
        "skipIntro",
        "Lcom/google/android/material/button/MaterialButton;",
        "speedSelection",
        "playerLock",
        "playerLockContainer",
        "Landroid/view/ViewGroup;",
        "downloadSelection",
        "fastSkip",
        "adFrame",
        "Landroid/widget/LinearLayout;",
        "adClose",
        "Landroid/widget/ImageView;",
        "playPauseButton",
        "Landroid/view/View;",
        "player",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "mediaSession",
        "Landroidx/media3/session/MediaSession;",
        "audioAttributes",
        "Landroidx/media3/common/AudioAttributes;",
        "getAudioAttributes",
        "()Landroidx/media3/common/AudioAttributes;",
        "audioAttributes$delegate",
        "startAutoPlay",
        "",
        "startItemIndex",
        "",
        "startPosition",
        "",
        "episodeTitle",
        "",
        "qualities",
        "Ljava/util/ArrayList;",
        "Lcom/player/easy/player/Quality;",
        "Lkotlin/collections/ArrayList;",
        "animeTitle",
        "selectedQuality",
        "skipFrom",
        "skipTo",
        "binding",
        "Lcom/player/easy/databinding/ActivityPlayerBinding;",
        "speedValues",
        "",
        "",
        "[Ljava/lang/Float;",
        "speedLabels",
        "",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "getSpeedLabels",
        "()Ljava/util/List;",
        "speedLabels$delegate",
        "selectedSpeed",
        "forwardRewardAmount",
        "getForwardRewardAmount",
        "()I",
        "forwardRewardAmount$delegate",
        "internalLocalPath",
        "sharedLocalPath",
        "Landroid/net/Uri;",
        "networkPath",
        "fromInternalLocal",
        "fromSharedLocal",
        "fromNetwork",
        "fromChooser",
        "fromAsOrDs",
        "watchDownloadDialogDismissed",
        "finishAfterDownload",
        "downloadRewardedAd",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/player/easy/util/result/Result;",
        "Lkotlin/Pair;",
        "Lcom/google/android/gms/ads/rewarded/RewardedAd;",
        "downloalRewardRemote",
        "Lcom/player/easy/player/RemoteReward;",
        "cookies",
        "getCookies",
        "()Ljava/lang/String;",
        "setCookies",
        "(Ljava/lang/String;)V",
        "headers",
        "",
        "disableTlsVerification",
        "handler",
        "Landroid/os/Handler;",
        "downloadManager",
        "Lcom/player/easy/data/download/DownloadManager;",
        "getDownloadManager",
        "()Lcom/player/easy/data/download/DownloadManager;",
        "downloadManager$delegate",
        "viewModel",
        "Lcom/player/easy/player/ExoViewModel;",
        "getViewModel",
        "()Lcom/player/easy/player/ExoViewModel;",
        "viewModel$delegate",
        "pressQualitySpeedDownload",
        "scrubMoving",
        "hostReachable",
        "playerAdConfig",
        "Lcom/player/easy/player/PlayerAdConfig;",
        "adsLoader",
        "Landroidx/media3/exoplayer/source/ads/AdsLoader;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "json$delegate",
        "networkHelper",
        "Lcom/player/easy/network/NetworkHelper;",
        "getNetworkHelper",
        "()Lcom/player/easy/network/NetworkHelper;",
        "networkHelper$delegate",
        "watchAdRewardLoading",
        "shouldUseWebView",
        "customView",
        "customViewCallback",
        "Landroid/webkit/WebChromeClient$CustomViewCallback;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "processRewardAd",
        "remoteReward",
        "rewardAdState",
        "fromAnimeSlayer",
        "excludeAdConfig",
        "playWebviewVideo",
        "hideSystemUi",
        "onWindowFocusChanged",
        "hasFocus",
        "setCustomBrightnessValue",
        "value",
        "showSpeedDialog",
        "changeSpeed",
        "position",
        "showQualityDialog",
        "playVideo",
        "showWatchOrDownloadChoiceDialog",
        "downloadJob",
        "Lkotlinx/coroutines/Job;",
        "handleDownloadClick",
        "showDownloadDialog",
        "parseOkHeaders",
        "conn",
        "Ljava/net/HttpURLConnection;",
        "changeQuality",
        "quality",
        "downloadQuality",
        "startDownload",
        "filename",
        "url",
        "userAgent",
        "permissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "onBottomSheetDialogDismiss",
        "wasPlaying",
        "currentUrlIsM3u8",
        "setForwardBackwardSkipAmount",
        "sec",
        "onStart",
        "onResume",
        "onPause",
        "onStop",
        "onDestroy",
        "onSaveInstanceState",
        "outState",
        "outPersistentState",
        "Landroid/os/PersistableBundle;",
        "shouldShowVideoAd",
        "videoAdConfig",
        "Lcom/player/easy/data/VideoAdConfig;",
        "initializePlayerCache",
        "getMediaItem",
        "Landroidx/media3/common/MediaItem;",
        "getAdsLoader",
        "releaseAdsLoader",
        "registerMediaSession",
        "unRegisterMediaSession",
        "onPlaybackStateChanged",
        "state",
        "updateControllerVisibility",
        "isPlayingAd",
        "maybeShowController",
        "shouldShowControllerIndefinitely",
        "showController",
        "showIndefinitely",
        "getCurrentPlayerPosition",
        "onIsPlayingChanged",
        "isPlaying",
        "numOfFailedHttpResponse",
        "getNumOfFailedHttpResponse",
        "setNumOfFailedHttpResponse",
        "(I)V",
        "onPlayerError",
        "error",
        "Landroidx/media3/common/PlaybackException;",
        "savePos",
        "loadPos",
        "releasePlayer",
        "updateStartPosition",
        "clearStartPosition",
        "onScrubMove",
        "timeBar",
        "Landroidx/media3/ui/TimeBar;",
        "onScrubStart",
        "onScrubStop",
        "canceled",
        "onDoubleTapProgressUp",
        "x",
        "y",
        "shouldForward",
        "(FFLjava/lang/Boolean;)V",
        "getFileName",
        "context",
        "Landroid/content/Context;",
        "uri",
        "parseHeaders",
        "headersJson",
        "setProgressLoading",
        "getProgressBarDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "isAsvLocalFile",
        "Companion",
        "Header",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExoPlayerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExoPlayerActivity.kt\ncom/player/easy/player/ExoPlayerActivity\n+ 2 Injekt.kt\nuy/kohesive/injekt/InjektKt\n+ 3 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Json.kt\nkotlinx/serialization/json/Json\n+ 6 View.kt\nandroidx/core/view/ViewKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 10 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,1930:1\n17#2:1931\n17#2:1932\n17#2:1946\n17#2:1947\n75#3,13:1933\n491#4,7:1948\n222#5:1955\n222#5:1976\n222#5:2059\n257#6,2:1956\n257#6,2:1958\n93#6,15:1961\n257#6,2:1977\n257#6,2:1979\n257#6,2:1981\n257#6,2:1983\n257#6,2:1985\n257#6,2:1987\n257#6,2:1989\n257#6,2:1991\n257#6,2:1993\n257#6,2:1998\n257#6,2:2000\n257#6,2:2002\n278#6,2:2019\n257#6,2:2021\n278#6,2:2023\n257#6,2:2025\n257#6,2:2028\n257#6,2:2043\n257#6,2:2045\n257#6,2:2047\n257#6,2:2049\n257#6,2:2051\n257#6,2:2053\n257#6,2:2055\n257#6,2:2057\n257#6,2:2069\n257#6,2:2071\n257#6,2:2073\n257#6,2:2075\n257#6,2:2077\n257#6,2:2079\n257#6,2:2081\n257#6,2:2083\n257#6,2:2085\n257#6,2:2087\n257#6,2:2089\n257#6,2:2091\n257#6,2:2093\n257#6,2:2095\n257#6,2:2097\n1#7:1960\n1807#8,3:1995\n1915#8,2:2017\n1205#8,2:2060\n1282#8,4:2062\n1915#8,2:2066\n40#9,13:2004\n40#9,13:2030\n29#10:2027\n29#10:2068\n*S KotlinDebug\n*F\n+ 1 ExoPlayerActivity.kt\ncom/player/easy/player/ExoPlayerActivity\n*L\n182#1:1931\n257#1:1932\n273#1:1946\n275#1:1947\n259#1:1933,13\n395#1:1948,7\n398#1:1955\n626#1:1976\n1825#1:2059\n413#1:1956,2\n414#1:1958,2\n582#1:1961,15\n704#1:1977,2\n705#1:1979,2\n706#1:1981,2\n707#1:1983,2\n711#1:1985,2\n712#1:1987,2\n713#1:1989,2\n717#1:1991,2\n732#1:1993,2\n831#1:1998,2\n833#1:2000,2\n941#1:2002,2\n1494#1:2019,2\n1497#1:2021,2\n1498#1:2023,2\n1562#1:2025,2\n1663#1:2028,2\n1730#1:2043,2\n1731#1:2045,2\n1747#1:2047,2\n1748#1:2049,2\n1756#1:2051,2\n1757#1:2053,2\n1773#1:2055,2\n1774#1:2057,2\n602#1:2069,2\n651#1:2071,2\n652#1:2073,2\n658#1:2075,2\n659#1:2077,2\n747#1:2079,2\n755#1:2081,2\n762#1:2083,2\n880#1:2085,2\n897#1:2087,2\n911#1:2089,2\n1741#1:2091,2\n1742#1:2093,2\n1767#1:2095,2\n1768#1:2097,2\n796#1:1995,3\n1279#1:2017,2\n1826#1:2060,2\n1826#1:2062,4\n230#1:2066,2\n1221#1:2004,13\n1672#1:2030,13\n1606#1:2027\n514#1:2068\n*E\n"
    }
.end annotation


# static fields
.field public static final ANIME_TITLE_ARG:Ljava/lang/String; = "anime_title"

.field public static final Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

.field public static final EPISODE_TITLE_ARG:Ljava/lang/String; = "title"

.field public static final EXTRA_BOOLEAN_FROM_LOCAL:Ljava/lang/String; = "from_local"

.field public static final EXTRA_BOOLEAN_FROM_NETWORK:Ljava/lang/String; = "from_network"

.field public static final EXTRA_BOOLEAN_FROM_SHARED_LOCAL:Ljava/lang/String; = "from_shared_local"

.field public static final EXTRA_STRING_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final EXTRA_STRING_HEADERS:Ljava/lang/String; = "headers"

.field public static final EXTRA_STRING_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_URI_PATH:Ljava/lang/String; = "uri_path"

.field public static final QUALITY_ARG:Ljava/lang/String; = "qualities"

.field public static final SELECTED_QUALITY_ARG:Ljava/lang/String; = "default_quality"

.field public static final SKIP_FROM_ARG:Ljava/lang/String; = "skip_from"

.field public static final SKIP_TO_ARG:Ljava/lang/String; = "skip_to"


# instance fields
.field private adClose:Landroid/widget/ImageView;

.field private adFrame:Landroid/widget/LinearLayout;

.field private adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

.field private animeTitle:Ljava/lang/String;

.field private final audioAttributes$delegate:Lkotlin/Lazy;

.field private binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

.field private cookies:Ljava/lang/String;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private disableTlsVerification:Z

.field private downloadJob:Lkotlinx/coroutines/Job;

.field private final downloadManager$delegate:Lkotlin/Lazy;

.field private final downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field

.field private downloadSelection:Landroid/widget/TextView;

.field private downloalRewardRemote:Lcom/player/easy/player/RemoteReward;

.field private episodeTitle:Ljava/lang/String;

.field private exoBuffering:Landroid/widget/ProgressBar;

.field private fastSkip:Landroid/widget/TextView;

.field private finishAfterDownload:Z

.field private final forwardRewardAmount$delegate:Lkotlin/Lazy;

.field private fromAsOrDs:Z

.field private fromChooser:Z

.field private fromInternalLocal:Z

.field private fromNetwork:Z

.field private fromSharedLocal:Z

.field private handler:Landroid/os/Handler;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hostReachable:Z

.field private internalLocalPath:Ljava/lang/String;

.field private final json$delegate:Lkotlin/Lazy;

.field private mediaSession:Landroidx/media3/session/MediaSession;

.field private final networkHelper$delegate:Lkotlin/Lazy;

.field private networkPath:Ljava/lang/String;

.field private numOfFailedHttpResponse:I

.field private final permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field private playPauseButton:Landroid/view/View;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

.field private playerLock:Landroid/widget/TextView;

.field private playerLockContainer:Landroid/view/ViewGroup;

.field private final preferences$delegate:Lkotlin/Lazy;

.field private final prefs$delegate:Lkotlin/Lazy;

.field private pressQualitySpeedDownload:Z

.field private qualities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/player/easy/player/Quality;",
            ">;"
        }
    .end annotation
.end field

.field private scrubMoving:Z

.field private selectedQuality:I

.field private selectedSpeed:I

.field private sharedLocalPath:Landroid/net/Uri;

.field private shouldUseWebView:Z

.field private skipFrom:J

.field private skipIntro:Lcom/google/android/material/button/MaterialButton;

.field private skipTo:J

.field private final speedLabels$delegate:Lkotlin/Lazy;

.field private speedSelection:Landroid/widget/TextView;

.field private final speedValues:[Ljava/lang/Float;

.field private startAutoPlay:Z

.field private startItemIndex:I

.field private startPosition:J

.field private trackSelection:Landroid/widget/TextView;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private watchAdRewardLoading:Z

.field private watchDownloadDialogDismissed:Z


# direct methods
.method public static synthetic $r8$lambda$-rTG4dEFclpzVTmSIGg5bXqLt5E(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$15(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0MY0YDFZpx3fVo3q3V-ouXKcjcA(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$12(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2gS83Es2m9twZvm92qsxqwfgzW4(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->preferences_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7b8CQhXxFQlV4bN1g7B7sxiQdgs(Lcom/player/easy/player/ExoPlayerActivity;ZLcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd$lambda$1$0$0(Lcom/player/easy/player/ExoPlayerActivity;ZLcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9yZKPnk8ASAJ-0z98ybchkcVoMU(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$0(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BxfTd_rmmPQ3SIJaLGzLNDChxcM(Landroid/webkit/CookieManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$6(Landroid/webkit/CookieManager;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Czci419NstFn5Zm9dw-PQ69qVXo(Lcom/player/easy/player/ExoPlayerActivity;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$13$0(Lcom/player/easy/player/ExoPlayerActivity;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FoIQg7SU-eSJ19Zm_z2q1XEOM-g(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/player/ExoPlayerActivity;->handleDownloadClick$lambda$0(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FsGMWg2bFF1nTubPXhWnGxjDuVk(Lcom/player/easy/player/ExoPlayerActivity;Lcom/player/easy/data/AdType;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$20(Lcom/player/easy/player/ExoPlayerActivity;Lcom/player/easy/data/AdType;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LVkka6XaKWaVjex2tuoIPvJj6cs(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$14(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LybzHro9llPHkCiI075xHPiR9TA(Lcom/player/easy/player/ExoPlayerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->permissionLauncher$lambda$0$0(Lcom/player/easy/player/ExoPlayerActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OyPja4nM2BcYWxEiH3IvO939TbY(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$2(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RwHoXj468TPVEu_sWpvBLaFmVeY(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$3(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TlVc12-HtWspfkYJp0rxsBDXDgI(Lcom/player/easy/player/ExoPlayerActivity;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->viewModel_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UED1_5Hikn4YAdi79rP5z_6dcs0(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd$lambda$1$1(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uu_1zRYr-aFmV2rnBg2-lTmtaFM(Lcom/player/easy/player/ExoPlayerActivity;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->forwardRewardAmount_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WZ45JveY5lDcsoyB25cgW8n3WGc(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$19(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wg6ssyrKyl_R-o45auYhyV7Veaw(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->speedLabels_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YYiWzUal8dFm6rTZywGT7A7Gc1Q(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getCurrentPlayerPosition()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zi5IRhZKNGafGh-mqp4QM-BT9a4(Lcom/player/easy/player/RemoteReward;Lcom/player/easy/player/ExoPlayerActivity;ZLcom/player/easy/util/result/Result;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd$lambda$1(Lcom/player/easy/player/RemoteReward;Lcom/player/easy/player/ExoPlayerActivity;ZLcom/player/easy/util/result/Result;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_O0_x2UDMgBNdUb3Mw36zx-0bqw(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$7(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$a00M2F9tzr-GiUFyg2-hDZZFZ1A(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->onDoubleTapProgressUp$lambda$1(Lcom/player/easy/player/ExoPlayerActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aCqY93JsTX2UEgIdjLV02cazbcA(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$18$0(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eqS_UiLNIqvSxc9o5Rb8st5Qmfk(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$17(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eswb9HDAB-sJaRy4LPiK-dGm57E(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->onDoubleTapProgressUp$lambda$3(Lcom/player/easy/player/ExoPlayerActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$euxdiae-CwDyJxj66m84LvAhnw0(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->handleDownloadClick$lambda$1(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4iOHn--OQgYIkHTAsTUrWn2zlE(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/player/ExoPlayerActivity;->showWatchOrDownloadChoiceDialog$lambda$1(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jO87pkUzjbnU7ntKuhdixQfvrjc(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/player/easy/player/ExoPlayerActivity;->showWatchOrDownloadChoiceDialog$lambda$2(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVvx8ov8lCSNHMYDEN94f_FdcLE(Lcom/player/easy/player/ExoPlayerActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->showWatchOrDownloadChoiceDialog$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k0_VDvMq7Tk6aqEIfez9C_VK5-I(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$16(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lHMjEL6cqrXYzUPo_X13e0aesMo(Landroidx/appcompat/app/AlertDialog;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/player/easy/player/ExoPlayerActivity;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd$lambda$1$0(Landroidx/appcompat/app/AlertDialog;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/player/easy/player/ExoPlayerActivity;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlRr9VL66RU2SC35K1Ao_AyqIrc(Lcom/player/easy/player/ExoPlayerActivity;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->permissionLauncher$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$o1VVnMjl5L_8LzsvnkLnfYNtFpI()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 0
    invoke-static {}, Lcom/player/easy/player/ExoPlayerActivity;->audioAttributes_delegate$lambda$0()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$teuR1cunmYsV17YVupmyGV30aeI(Lcom/player/easy/player/ExoPlayerActivity;ZLcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->handleDownloadClick$lambda$1$0(Lcom/player/easy/player/ExoPlayerActivity;ZLcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNKQQfS0wKPiOL_il50dLo0n3pQ(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$lambda$1(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/player/easy/player/ExoPlayerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/player/easy/player/ExoPlayerActivity;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 132
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 180
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda11;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 1931
    sget-object v0, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$1;->INSTANCE:Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$1;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->prefs$delegate:Lkotlin/Lazy;

    .line 199
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->audioAttributes$delegate:Lkotlin/Lazy;

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    const/4 v1, -0x1

    .line 213
    iput v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Float;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v2, v7, v0

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v2, 0x3

    aput-object v4, v7, v2

    const/4 v2, 0x4

    aput-object v5, v7, v2

    const/4 v2, 0x5

    aput-object v6, v7, v2

    iput-object v7, p0, Lcom/player/easy/player/ExoPlayerActivity;->speedValues:[Ljava/lang/Float;

    .line 220
    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda13;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->speedLabels$delegate:Lkotlin/Lazy;

    .line 233
    iput v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedSpeed:I

    .line 234
    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda14;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->forwardRewardAmount$delegate:Lkotlin/Lazy;

    .line 248
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    .line 251
    const-string v1, ""

    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->cookies:Ljava/lang/String;

    .line 252
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->headers:Ljava/util/Map;

    .line 255
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->handler:Landroid/os/Handler;

    .line 1932
    sget-object v1, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$2;->INSTANCE:Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 257
    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadManager$delegate:Lkotlin/Lazy;

    .line 259
    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda15;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    .line 1941
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Lcom/player/easy/player/ExoViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 1943
    new-instance v4, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, p0}, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 1945
    new-instance v5, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 1941
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 259
    iput-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->viewModel$delegate:Lkotlin/Lazy;

    .line 266
    iput-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->hostReachable:Z

    .line 1946
    sget-object v0, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;->INSTANCE:Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$3;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 273
    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->json$delegate:Lkotlin/Lazy;

    .line 1947
    sget-object v0, Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$4;->INSTANCE:Lcom/player/easy/player/ExoPlayerActivity$special$$inlined$injectLazy$4;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 275
    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->networkHelper$delegate:Lkotlin/Lazy;

    .line 1244
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda16;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getAnimeTitle$p(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    return-object p0
.end method

.method public static final synthetic access$getCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/view/View;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->customView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getCustomViewCallback$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method public static final synthetic access$getDownloadSelection$p(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getEpisodeTitle$p(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->episodeTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFromAsOrDs$p(Lcom/player/easy/player/ExoPlayerActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromAsOrDs:Z

    return p0
.end method

.method public static final synthetic access$getFromChooser$p(Lcom/player/easy/player/ExoPlayerActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromChooser:Z

    return p0
.end method

.method public static final synthetic access$getFromInternalLocal$p(Lcom/player/easy/player/ExoPlayerActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromInternalLocal:Z

    return p0
.end method

.method public static final synthetic access$getFromNetwork$p(Lcom/player/easy/player/ExoPlayerActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    return p0
.end method

.method public static final synthetic access$getFromSharedLocal$p(Lcom/player/easy/player/ExoPlayerActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromSharedLocal:Z

    return p0
.end method

.method public static final synthetic access$getHostReachable$p(Lcom/player/easy/player/ExoPlayerActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->hostReachable:Z

    return p0
.end method

.method public static final synthetic access$getNetworkPath$p(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->networkPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPlayerAdConfig$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/player/PlayerAdConfig;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/player/ExoViewModel;
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getViewModel()Lcom/player/easy/player/ExoViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseOkHeaders(Lcom/player/easy/player/ExoPlayerActivity;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->parseOkHeaders(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static final synthetic access$setCustomBrightnessValue(Lcom/player/easy/player/ExoPlayerActivity;F)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->setCustomBrightnessValue(F)V

    return-void
.end method

.method public static final synthetic access$setCustomView$p(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->customView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setCustomViewCallback$p(Lcom/player/easy/player/ExoPlayerActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public static final synthetic access$setHostReachable$p(Lcom/player/easy/player/ExoPlayerActivity;Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->hostReachable:Z

    return-void
.end method

.method private static final audioAttributes_delegate$lambda$0()Landroidx/media3/common/AudioAttributes;
    .locals 2

    .line 200
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 202
    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method private final clearStartPosition()V
    .locals 2

    const/4 v0, 0x1

    .line 1703
    iput-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    const/4 v0, -0x1

    .line 1704
    iput v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startItemIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1705
    iput-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startPosition:J

    return-void
.end method

.method private final currentUrlIsM3u8()Z
    .locals 3

    .line 1273
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->networkPath:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "networkPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/player/Quality;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    .line 1275
    :cond_2
    :goto_0
    const-string v1, ".m3u8"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static final forwardRewardAmount_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)I
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/player/easy/data/preference/PreferencesHelper;->seekAmount()I

    move-result p0

    return p0
.end method

.method private final getAdsLoader()Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    if-nez v0, :cond_0

    .line 1452
    new-instance v0, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ima/ImaAdsLoader$Builder;->build()Landroidx/media3/exoplayer/ima/ImaAdsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->audioAttributes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method private final getCurrentPlayerPosition()V
    .locals 8

    .line 1560
    iget-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipFrom:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipTo:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_2

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    .line 1562
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipIntro:Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_2

    const-string v0, "skipIntro"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-wide v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipFrom:J

    iget-wide v6, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipTo:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    cmp-long v2, v4, v2

    if-gtz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    .line 2025
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1563
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_4

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private final getDownloadManager()Lcom/player/easy/data/download/DownloadManager;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/download/DownloadManager;

    return-object v0
.end method

.method private final getForwardRewardAmount()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->forwardRewardAmount$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 5

    .line 1425
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->videoAdConfig()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-interface {v0}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/VideoAdConfig;

    .line 1427
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 1428
    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromInternalLocal:Z

    const/4 v3, 0x0

    const-string v4, "build(...)"

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromChooser:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1430
    :cond_0
    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromSharedLocal:Z

    if-eqz v2, :cond_2

    .line 1431
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->sharedLocalPath:Landroid/net/Uri;

    if-nez v0, :cond_1

    const-string v0, "sharedLocalPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1432
    :cond_2
    iget-boolean v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v2, :cond_4

    .line 1433
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->networkPath:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "networkPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1436
    :cond_4
    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 1437
    iget v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/player/easy/player/Quality;

    invoke-virtual {v2}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1439
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    .line 1440
    invoke-direct {p0, v0}, Lcom/player/easy/player/ExoPlayerActivity;->shouldShowVideoAd(Lcom/player/easy/data/VideoAdConfig;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1442
    new-instance v2, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;

    invoke-virtual {v0}, Lcom/player/easy/data/VideoAdConfig;->getVast_source_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$AdsConfiguration;

    move-result-object v0

    .line 1441
    invoke-virtual {v1, v0}, Landroidx/media3/common/MediaItem$Builder;->setAdsConfiguration(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    .line 1446
    :cond_5
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 1436
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "quality should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1429
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->internalLocalPath:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "internalLocalPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v3, v0

    :goto_3
    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->preferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->prefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/data/preference/PreferencesHelper;

    return-object v0
.end method

.method private final getProgressBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1866
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1867
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010079

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1868
    iget v0, v0, Landroid/util/TypedValue;->data:I

    const v1, 0x101013b

    .line 1869
    filled-new-array {v1}, [I

    move-result-object v1

    .line 1870
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "obtainStyledAttributes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1872
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private final getSpeedLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->speedLabels$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getViewModel()Lcom/player/easy/player/ExoViewModel;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/player/ExoViewModel;

    return-object v0
.end method

.method private final handleDownloadClick()V
    .locals 7

    .line 1053
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->isAdFreeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->showDownloadDialog()V

    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloalRewardRemote:Lcom/player/easy/player/RemoteReward;

    if-eqz v0, :cond_10

    .line 1058
    invoke-virtual {v0}, Lcom/player/easy/player/RemoteReward;->getAd_type()Lcom/player/easy/player/RemoteRewardAdType;

    move-result-object v0

    sget-object v1, Lcom/player/easy/player/RemoteRewardAdType;->WATCH:Lcom/player/easy/player/RemoteRewardAdType;

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/player/easy/util/result/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/util/result/Result;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/player/easy/util/result/ResultKt;->getData(Lcom/player/easy/util/result/Result;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 1064
    :cond_3
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/player/easy/util/result/Result$Loading;

    if-eqz v0, :cond_f

    .line 1066
    :cond_4
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    const/4 v3, 0x1

    .line 1067
    iput-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->pressQualitySpeedDownload:Z

    .line 1068
    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroidx/media3/common/Player;->pause()V

    .line 1070
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/player/easy/R$layout;->reward_download_ad:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1071
    sget v4, Lcom/player/easy/R$id;->close:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1072
    sget v5, Lcom/player/easy/R$id;->watchAd:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 1074
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v6, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1075
    invoke-virtual {v6, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1076
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1077
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v6, "create(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    if-eqz v4, :cond_7

    .line 1079
    new-instance v6, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda33;

    invoke-direct {v6, v1, p0, v0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda33;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;Z)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    :cond_7
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/player/easy/util/result/Result$Loading;

    if-eqz v0, :cond_a

    if-eqz v5, :cond_8

    .line 1087
    invoke-direct {p0, v5, v3}, Lcom/player/easy/player/ExoPlayerActivity;->setProgressLoading(Lcom/google/android/material/button/MaterialButton;Z)V

    :cond_8
    if-eqz v5, :cond_9

    .line 1088
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    if-eqz v5, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1089
    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1091
    :cond_a
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/player/easy/util/result/Result$Success;

    if-eqz v0, :cond_d

    if-eqz v5, :cond_b

    .line 1092
    invoke-direct {p0, v5, v2}, Lcom/player/easy/player/ExoPlayerActivity;->setProgressLoading(Lcom/google/android/material/button/MaterialButton;Z)V

    :cond_b
    if-eqz v5, :cond_c

    .line 1093
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_c
    if-eqz v5, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1094
    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    if-eqz v5, :cond_e

    .line 1096
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0, v1, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda34;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    return-void

    .line 1114
    :cond_f
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->showDownloadDialog()V

    return-void

    .line 1059
    :cond_10
    :goto_2
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->showDownloadDialog()V

    return-void
.end method

.method private static final handleDownloadClick$lambda$0(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;ZLandroid/view/View;)V
    .locals 0

    .line 1080
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 p0, 0x0

    .line 1081
    iput-boolean p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->pressQualitySpeedDownload:Z

    if-eqz p2, :cond_1

    .line 1082
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1083
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    const-string p0, "player"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->play()V

    :cond_1
    return-void
.end method

.method private static final handleDownloadClick$lambda$1(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 1

    .line 1097
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1098
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/player/easy/util/result/Result;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/player/easy/util/result/ResultKt;->getData(Lcom/player/easy/util/result/Result;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 1100
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/player/easy/util/result/Result;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/player/easy/util/result/ResultKt;->getData(Lcom/player/easy/util/result/Result;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-nez p0, :cond_1

    goto :goto_1

    .line 1099
    :cond_1
    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p2, :cond_2

    .line 1101
    new-instance v0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda8;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Z)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    :cond_2
    :goto_1
    return-void

    .line 1110
    :cond_3
    invoke-direct {p1}, Lcom/player/easy/player/ExoPlayerActivity;->showDownloadDialog()V

    return-void
.end method

.method private static final handleDownloadClick$lambda$1$0(Lcom/player/easy/player/ExoPlayerActivity;ZLcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->showDownloadDialog()V

    if-eqz p1, :cond_0

    .line 1104
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastExcludeDownloadAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    return-void

    .line 1106
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastDownloadAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final initializePlayerCache()V
    .locals 10

    .line 1353
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    .line 1354
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 1357
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 1359
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/player/easy/data/preference/PreferencesHelper;->videoAdConfig()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v1

    invoke-interface {v1}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/player/easy/data/VideoAdConfig;

    .line 1361
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 1362
    iget-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromAsOrDs:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v3, :cond_5

    .line 1363
    :cond_1
    new-instance v3, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    iget-boolean v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->disableTlsVerification:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getNetworkHelper()Lcom/player/easy/network/NetworkHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/player/easy/network/NetworkHelper;->buildInsecureClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getNetworkHelper()Lcom/player/easy/network/NetworkHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/player/easy/network/NetworkHelper;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    :goto_0
    invoke-direct {v3, v4}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;-><init>(Lokhttp3/Call$Factory;)V

    .line 1364
    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1365
    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->headers:Ljava/util/Map;

    invoke-virtual {v3, v4}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    .line 1367
    :cond_3
    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->headers:Ljava/util/Map;

    const-string v5, "User-Agent"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1368
    const-string v4, "Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36"

    invoke-virtual {v3, v4}, Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/okhttp/OkHttpDataSource$Factory;

    .line 1370
    :cond_4
    new-instance v4, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v4, p0, v3}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1374
    new-instance v3, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    invoke-direct {v3}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;-><init>()V

    .line 1375
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.player.easy.App"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/player/easy/App;

    invoke-virtual {v5}, Lcom/player/easy/App;->getSimpleCache()Landroidx/media3/datasource/cache/SimpleCache;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setCache(Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    move-result-object v3

    .line 1376
    invoke-virtual {v3, v4}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    move-result-object v3

    const/4 v4, 0x2

    .line 1377
    invoke-virtual {v3, v4}, Landroidx/media3/datasource/cache/CacheDataSource$Factory;->setFlags(I)Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    move-result-object v3

    .line 1375
    const-string v4, "setFlags(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1379
    new-instance v4, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v4, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1380
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 1382
    :cond_5
    iget-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromInternalLocal:Z

    const/4 v4, 0x0

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromChooser:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromSharedLocal:Z

    if-eqz v3, :cond_8

    .line 1383
    :cond_6
    iget-object v3, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v3, :cond_7

    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_7
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_8

    .line 1384
    invoke-direct {p0, p0, v3}, Lcom/player/easy/player/ExoPlayerActivity;->isAsvLocalFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1386
    new-instance v3, Lcom/player/easy/player/AsvDataSourceFactory;

    new-instance v5, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v5, p0}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v5}, Lcom/player/easy/player/AsvDataSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1387
    new-instance v5, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    invoke-direct {v5, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 1388
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 1392
    :cond_8
    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 1393
    invoke-direct {p0, v1}, Lcom/player/easy/player/ExoPlayerActivity;->shouldShowVideoAd(Lcom/player/easy/data/VideoAdConfig;)Z

    move-result v1

    const-string v2, "player"

    if-eqz v1, :cond_a

    .line 1394
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getAdsLoader()Landroidx/media3/exoplayer/source/ads/AdsLoader;

    move-result-object v1

    .line 1396
    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v3, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_9
    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->setPlayer(Landroidx/media3/common/Player;)V

    .line 1397
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/player/easy/data/preference/PreferencesHelper;->lastShowingVideoAd()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    .line 1399
    :cond_a
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getForwardRewardAmount()I

    move-result v1

    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 1400
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_b
    invoke-interface {v1, v5, v6}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekBackIncrementMs(J)V

    .line 1401
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_c
    invoke-interface {v1, v5, v6}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekForwardIncrementMs(J)V

    .line 1402
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_d
    invoke-interface {v1, p0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 1403
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_e
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v1, v3, v5}, Landroidx/media3/common/Player;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    .line 1404
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_f
    invoke-interface {v1, v5}, Landroidx/media3/exoplayer/ExoPlayer;->setHandleAudioBecomingNoisy(Z)V

    .line 1405
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_10
    sget-object v3, Landroidx/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 1406
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v1, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_11
    iget-boolean v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    invoke-interface {v1, v3}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 1407
    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->speedValues:[Ljava/lang/Float;

    iget v6, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedSpeed:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, v3}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    .line 1408
    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v3, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_12
    invoke-interface {v3, v1}, Landroidx/media3/common/Player;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1409
    sget v1, Lcom/player/easy/R$id;->exo_progress:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/media3/ui/DefaultTimeBar;

    invoke-virtual {v1, p0}, Landroidx/media3/ui/DefaultTimeBar;->addListener(Landroidx/media3/ui/TimeBar$OnScrubListener;)V

    .line 1411
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const-string v3, "binding"

    if-nez v1, :cond_13

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_13
    iget-object v1, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    iget-object v6, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v6, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_14
    invoke-virtual {v1, v6}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 1413
    iget v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->startItemIndex:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_15

    move v1, v5

    goto :goto_2

    :cond_15
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_17

    .line 1415
    iget-object v6, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v6, :cond_16

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_16
    iget v7, p0, Lcom/player/easy/player/ExoPlayerActivity;->startItemIndex:I

    iget-wide v8, p0, Lcom/player/easy/player/ExoPlayerActivity;->startPosition:J

    invoke-interface {v6, v7, v8, v9}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 1417
    :cond_17
    iget-object v6, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v6, :cond_18

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v4

    :cond_18
    xor-int/2addr v1, v5

    invoke-interface {v6, v0, v1}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    .line 1418
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_19
    invoke-interface {v0}, Landroidx/media3/common/Player;->prepare()V

    .line 1421
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_1a
    move-object v4, v0

    :goto_3
    iget-object v0, v4, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->showController()V

    return-void
.end method

.method private final isAsvLocalFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    .line 1914
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1915
    const-string v3, "file"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "content"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 1920
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lcom/player/easy/player/ExoPlayerActivity;->isAsvLocalFile$openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    .line 1921
    :try_start_1
    invoke-static {p1}, Lcom/player/easy/player/ExoPlayerActivity;->isAsvLocalFile$readMagicBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1922
    sget-object v3, Lcom/player/easy/player/AsvDataSource;->Companion:Lcom/player/easy/player/AsvDataSource$Companion;

    invoke-virtual {v3}, Lcom/player/easy/player/AsvDataSource$Companion;->getMAGIC()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move v3, v2

    .line 1920
    :goto_1
    :try_start_2
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v2

    .line 1925
    :goto_3
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error checking if file is ASV format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private static final isAsvLocalFile$openInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    .line 1880
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 1881
    :goto_0
    const-string v2, "content"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 1882
    :cond_1
    const-string p0, "file"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1

    :cond_2
    return-object v0

    :cond_3
    if-nez v1, :cond_5

    .line 1885
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1886
    :cond_4
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_5
    return-object v0

    .line 1891
    :goto_1
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final isAsvLocalFile$readMagicBytes(Ljava/io/InputStream;)[B
    .locals 4

    const/4 v0, 0x4

    .line 1901
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    rsub-int/lit8 v3, v2, 0x4

    .line 1904
    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final isPlayingAd()Z
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final loadPos()V
    .locals 5

    .line 1677
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "animeTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->episodeTitle:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 1679
    iput-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startPosition:J

    .line 1680
    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v3, :cond_1

    const-string v3, "player"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-interface {v2, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    :cond_2
    return-void
.end method

.method private final maybeShowController()V
    .locals 3

    .line 1522
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getUseController()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1527
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->isControllerFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1528
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getControllerShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1529
    :goto_1
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    .line 1531
    :cond_5
    invoke-direct {p0, v1}, Lcom/player/easy/player/ExoPlayerActivity;->showController(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final onCreate$getFragmentParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2068
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 514
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 p0, 0x0

    if-nez v0, :cond_0

    return-object p0

    .line 517
    :cond_0
    const-string v1, "&"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 518
    const-string v1, "="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 519
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Lkotlin/Unit;
    .locals 2

    const-string v0, "$this$remoteConfigSettings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x384

    .line 317
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    .line 318
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreate$lambda$1(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 324
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config params updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$12(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 590
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void
.end method

.method private static final onCreate$lambda$13$0(Lcom/player/easy/player/ExoPlayerActivity;Lcom/google/android/material/button/MaterialButton;Landroid/view/View;)V
    .locals 4

    .line 598
    iget-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipTo:J

    iput-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startPosition:J

    .line 599
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x0

    const-string v1, "player"

    if-nez p2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    iget-wide v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipTo:J

    invoke-interface {p2, v2, v3}, Landroidx/media3/common/Player;->seekTo(J)V

    const/4 p2, 0x1

    .line 600
    iput-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    .line 601
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-interface {v0, p2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 602
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p0, 0x8

    .line 2069
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final onCreate$lambda$14(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 642
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->handleDownloadClick()V

    return-void
.end method

.method private static final onCreate$lambda$15(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V
    .locals 4

    .line 650
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    iget-object p2, p2, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/player/easy/player/DoubleTabPlayerView;->setScreenIsLocked(Z)V

    .line 651
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerLockContainer:Landroid/view/ViewGroup;

    if-nez p2, :cond_1

    const-string p2, "playerLockContainer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    const/16 v3, 0x8

    .line 2071
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 652
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2073
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->showController()V

    return-void
.end method

.method private static final onCreate$lambda$16(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;Landroid/view/View;)V
    .locals 2

    .line 657
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    iget-object p2, p2, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/player/easy/player/DoubleTabPlayerView;->setScreenIsLocked(Z)V

    .line 658
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p2, 0x8

    .line 2075
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerLockContainer:Landroid/view/ViewGroup;

    if-nez p0, :cond_1

    const-string p0, "playerLockContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    const/4 p0, 0x0

    .line 2077
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final onCreate$lambda$17(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 6

    .line 663
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_4

    .line 665
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    const p1, 0x14c08

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 666
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x0

    const-string v3, "player"

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    .line 668
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    .line 670
    :cond_2
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-interface {v2, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    :cond_4
    return-void
.end method

.method private static final onCreate$lambda$18$0(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 688
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->pressQualitySpeedDownload:Z

    .line 689
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->showQualityDialog()V

    return-void
.end method

.method private static final onCreate$lambda$19(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 699
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->pressQualitySpeedDownload:Z

    .line 700
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->showSpeedDialog()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    const-string v0, "task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    .line 331
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config params updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$20(Lcom/player/easy/player/ExoPlayerActivity;Lcom/player/easy/data/AdType;)Lkotlin/Unit;
    .locals 6

    .line 740
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->isAdFreeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 745
    :cond_0
    instance-of v0, p1, Lcom/player/easy/data/AdConfig;

    const-string v1, "admob"

    const-string v2, "playerAdConfig"

    const/16 v3, 0x8

    const-string v4, "adFrame"

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 746
    check-cast p1, Lcom/player/easy/data/AdConfig;

    invoke-static {p1}, Lcom/player/easy/data/IpInformationKt;->isBannerFormat(Lcom/player/easy/data/AdConfig;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adFrame:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .line 2079
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 749
    :cond_2
    invoke-virtual {p1}, Lcom/player/easy/data/AdConfig;->getAd_network()Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, p0

    :goto_0
    invoke-virtual {v5, p1}, Lcom/player/easy/player/PlayerAdConfig;->initAdMob(Lcom/player/easy/data/AdConfig;)V

    goto :goto_3

    .line 753
    :cond_4
    instance-of v0, p1, Lcom/player/easy/data/CustomAdConfig;

    if-eqz v0, :cond_8

    .line 754
    check-cast p1, Lcom/player/easy/data/CustomAdConfig;

    invoke-static {p1}, Lcom/player/easy/data/IpInformationKt;->isBannerFormat(Lcom/player/easy/data/CustomAdConfig;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 755
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adFrame:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .line 2081
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_6
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    if-nez p0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v5, p0

    :goto_1
    invoke-virtual {v5, p1}, Lcom/player/easy/player/PlayerAdConfig;->initCustomAds(Lcom/player/easy/data/CustomAdConfig;)V

    goto :goto_3

    .line 759
    :cond_8
    instance-of v0, p1, Lcom/player/easy/data/VideoAdConfig;

    if-eqz v0, :cond_d

    .line 761
    check-cast p1, Lcom/player/easy/data/VideoAdConfig;

    invoke-virtual {p1}, Lcom/player/easy/data/VideoAdConfig;->getFallback()Lcom/player/easy/data/AdConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/player/easy/data/IpInformationKt;->isBannerFormat(Lcom/player/easy/data/AdConfig;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 762
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adFrame:Landroid/widget/LinearLayout;

    if-nez v0, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    .line 2083
    :cond_9
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 764
    :cond_a
    invoke-virtual {p1}, Lcom/player/easy/data/VideoAdConfig;->getFallback()Lcom/player/easy/data/AdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/AdConfig;->getAd_network()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    if-nez p0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v5, p0

    :goto_2
    invoke-virtual {p1}, Lcom/player/easy/data/VideoAdConfig;->getFallback()Lcom/player/easy/data/AdConfig;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/player/easy/player/PlayerAdConfig;->initAdMob(Lcom/player/easy/data/AdConfig;)V

    .line 769
    :cond_c
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 744
    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final onCreate$lambda$3(Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    if-nez p0, :cond_0

    const-string p0, "playerAdConfig"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/player/easy/player/PlayerAdConfig;->onClickOnAdClose()V

    return-void
.end method

.method private static final onCreate$lambda$6(Landroid/webkit/CookieManager;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$7(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    .line 499
    const-string v1, "video/mp4"

    const/4 v2, 0x1

    move-object/from16 v3, p4

    invoke-static {v3, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v1, v0, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "animeTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    iget-object v2, v0, Lcom/player/easy/player/ExoPlayerActivity;->episodeTitle:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    new-instance v2, Lkotlin/text/Regex;

    .line 505
    const-string v3, "[^a-zA-Z0-9_]+"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v1, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 506
    const-string v5, "____"

    const-string v6, "_"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 507
    const-string v11, "___"

    const-string v12, "_"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 508
    const-string v2, "__"

    const-string v3, "_"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/player/easy/player/ExoPlayerActivity;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onDoubleTapProgressUp$lambda$1(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 4

    .line 1741
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    const-string v3, "rewardPlayer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 2091
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1742
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    const-string v0, "forwardPlayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final onDoubleTapProgressUp$lambda$3(Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 4

    .line 1767
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    const-string v3, "rewardPlayer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 2095
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    const-string v0, "forwardPlayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final parseHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1820
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1825
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 2059
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/player/easy/player/ExoPlayerActivity$Header;->Companion:Lcom/player/easy/player/ExoPlayerActivity$Header$Companion;

    invoke-virtual {v2}, Lcom/player/easy/player/ExoPlayerActivity$Header$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1825
    check-cast v0, Ljava/util/List;

    const/16 v1, 0xa

    .line 2060
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 2061
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2062
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2063
    check-cast v1, Lcom/player/easy/player/ExoPlayerActivity$Header;

    .line 1826
    invoke-virtual {v1}, Lcom/player/easy/player/ExoPlayerActivity$Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/player/easy/player/ExoPlayerActivity$Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 2063
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-object v2

    .line 1828
    :goto_1
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse headers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p1, v2}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1829
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 1821
    :cond_2
    :goto_2
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final parseOkHeaders(Ljava/net/HttpURLConnection;)V
    .locals 10

    .line 1165
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "downloadSelection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1166
    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    const-string v2, "Content-Location"

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, "toString(...)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1170
    const-string v5, "video"

    invoke-static {p1, v5, v3, v4, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object p1, v1

    .line 1174
    :cond_1
    const-string v3, "application/octet-stream"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 1178
    :goto_0
    invoke-static {v6, v0, v2, v1}, Lcom/player/easy/util/storage/JavUtils;->getHttpFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1179
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/player/easy/player/ExoPlayerActivity;->startDownload$default(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final permissionLauncher$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1246
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1247
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 1248
    sget v0, Lcom/player/easy/R$string;->storage_permission_required:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 1250
    sget v0, Lcom/player/easy/R$string;->app_required:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/player/easy/R$string;->app_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1252
    sget v2, Lcom/player/easy/R$string;->storage_permission_needed_download:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1249
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 1254
    sget v0, Lcom/player/easy/R$string;->dialog_cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 1255
    sget v0, Lcom/player/easy/R$string;->action_settings:I

    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda32;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    .line 1261
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private static final permissionLauncher$lambda$0$0(Lcom/player/easy/player/ExoPlayerActivity;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1256
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1258
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1259
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final playVideo()V
    .locals 1

    .line 991
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->playWebviewVideo()V

    return-void

    .line 995
    :cond_0
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromAsOrDs:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->showWatchOrDownloadDialog()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-interface {v0}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchDownloadDialogDismissed:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->currentUrlIsM3u8()Z

    move-result v0

    if-nez v0, :cond_3

    .line 996
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->initializePlayerCache()V

    .line 997
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->registerMediaSession()V

    .line 998
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->loadPos()V

    .line 999
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_2

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V

    .line 1000
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->showWatchOrDownloadChoiceDialog()V

    return-void

    .line 1003
    :cond_3
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->initializePlayerCache()V

    .line 1004
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->registerMediaSession()V

    .line 1005
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->loadPos()V

    return-void
.end method

.method private final playWebviewVideo()V
    .locals 6

    .line 940
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/player/Quality;

    invoke-virtual {v0}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 941
    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const-string v3, "binding"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    iget-object v2, v2, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    const-string v5, "webview"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2002
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 942
    invoke-virtual {p0}, Lcom/player/easy/player/ExoPlayerActivity;->hideSystemUi()V

    .line 943
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_1
    iget-object v1, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    const-string v2, "#webview_indicated"

    const/4 v3, 0x2

    invoke-static {v0, v2, v4, v3, v4}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static final preferences_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 180
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static final processRewardAd$canShowNewAd(Lcom/tfcporciuncula/flow/Preference;Lcom/player/easy/player/RemoteReward;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tfcporciuncula/flow/Preference;",
            "Lcom/player/easy/player/RemoteReward;",
            ")Z"
        }
    .end annotation

    .line 823
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 824
    invoke-interface {p0}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 825
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getShow_ad_every_n_min()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    add-long/2addr v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic processRewardAd$default(Lcom/player/easy/player/ExoPlayerActivity;Lcom/player/easy/player/RemoteReward;Landroidx/lifecycle/MutableLiveData;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 772
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd(Lcom/player/easy/player/RemoteReward;Landroidx/lifecycle/MutableLiveData;ZZ)V

    return-void
.end method

.method private static final processRewardAd$lambda$1(Lcom/player/easy/player/RemoteReward;Lcom/player/easy/player/ExoPlayerActivity;ZLcom/player/easy/util/result/Result;)Lkotlin/Unit;
    .locals 10

    .line 873
    instance-of v0, p3, Lcom/player/easy/util/result/Result$Error;

    const-string v1, "progress"

    const-string v2, "binding"

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "downloadSelection"

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    .line 874
    invoke-virtual {p0}, Lcom/player/easy/player/RemoteReward;->getAd_type()Lcom/player/easy/player/RemoteRewardAdType;

    move-result-object p0

    sget-object p2, Lcom/player/easy/player/RemoteRewardAdType;->DOWNLOAD:Lcom/player/easy/player/RemoteRewardAdType;

    if-ne p0, p2, :cond_3

    .line 875
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v8

    :cond_0
    invoke-direct {p1, p0, v6}, Lcom/player/easy/player/ExoPlayerActivity;->setProgressLoading(Landroid/widget/TextView;Z)V

    .line 876
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v8

    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 877
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v8, p0

    :goto_0
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    .line 878
    iput-boolean v6, p1, Lcom/player/easy/player/ExoPlayerActivity;->watchAdRewardLoading:Z

    goto/16 :goto_4

    .line 880
    :cond_3
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v8, p0

    :goto_1
    iget-object p0, v8, Lcom/player/easy/databinding/ActivityPlayerBinding;->progress:Landroid/widget/ProgressBar;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 881
    invoke-direct {p1}, Lcom/player/easy/player/ExoPlayerActivity;->playVideo()V

    goto/16 :goto_4

    .line 884
    :cond_5
    sget-object v0, Lcom/player/easy/util/result/Result$Loading;->INSTANCE:Lcom/player/easy/util/result/Result$Loading;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 885
    invoke-virtual {p0}, Lcom/player/easy/player/RemoteReward;->getAd_type()Lcom/player/easy/player/RemoteRewardAdType;

    move-result-object p0

    sget-object p2, Lcom/player/easy/player/RemoteRewardAdType;->DOWNLOAD:Lcom/player/easy/player/RemoteRewardAdType;

    if-ne p0, p2, :cond_13

    .line 886
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_6

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v8

    :cond_6
    invoke-direct {p1, p0, v5}, Lcom/player/easy/player/ExoPlayerActivity;->setProgressLoading(Landroid/widget/TextView;Z)V

    .line 887
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v8

    :cond_7
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 888
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_8

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v8, p0

    :goto_2
    const/high16 p0, 0x3f000000    # 0.5f

    invoke-virtual {v8, p0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4

    .line 891
    :cond_9
    instance-of v0, p3, Lcom/player/easy/util/result/Result$Success;

    if-eqz v0, :cond_14

    .line 892
    invoke-virtual {p0}, Lcom/player/easy/player/RemoteReward;->getAd_type()Lcom/player/easy/player/RemoteRewardAdType;

    move-result-object v0

    sget-object v9, Lcom/player/easy/player/RemoteRewardAdType;->DOWNLOAD:Lcom/player/easy/player/RemoteRewardAdType;

    if-ne v0, v9, :cond_d

    .line 893
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_a

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v8

    :cond_a
    invoke-direct {p1, p0, v6}, Lcom/player/easy/player/ExoPlayerActivity;->setProgressLoading(Landroid/widget/TextView;Z)V

    .line 894
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_b

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v8

    :cond_b
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 895
    iget-object p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez p0, :cond_c

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v8, p0

    :goto_3
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4

    .line 897
    :cond_d
    iget-object v0, p1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_e
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 898
    check-cast p3, Lcom/player/easy/util/result/Result$Success;

    invoke-virtual {p3}, Lcom/player/easy/util/result/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz p3, :cond_12

    .line 900
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/player/easy/R$layout;->reward_watch_ad:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 901
    sget v1, Lcom/player/easy/R$id;->watchAd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 902
    sget v2, Lcom/player/easy/R$id;->noThanks:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 904
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v3, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 905
    invoke-virtual {v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 906
    invoke-virtual {v0, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v3, "create(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 909
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    if-eqz v2, :cond_10

    .line 911
    invoke-virtual {p0}, Lcom/player/easy/player/RemoteReward;->getAdDisplay()I

    move-result p0

    if-nez p0, :cond_f

    move v4, v6

    .line 2089
    :cond_f
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    if-eqz v1, :cond_11

    .line 912
    new-instance p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda3;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/player/easy/player/ExoPlayerActivity;Z)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    if-eqz v2, :cond_13

    .line 925
    new-instance p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda4;

    invoke-direct {p0, v0, p1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda4;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 931
    :cond_12
    invoke-direct {p1}, Lcom/player/easy/player/ExoPlayerActivity;->playVideo()V

    .line 936
    :cond_13
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 872
    :cond_14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final processRewardAd$lambda$1$0(Landroidx/appcompat/app/AlertDialog;Lcom/google/android/gms/ads/rewarded/RewardedAd;Lcom/player/easy/player/ExoPlayerActivity;ZLandroid/view/View;)V
    .locals 0

    .line 913
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 914
    new-instance p0, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda10;

    invoke-direct {p0, p2, p3}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda10;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Z)V

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void
.end method

.method private static final processRewardAd$lambda$1$0$0(Lcom/player/easy/player/ExoPlayerActivity;ZLcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/player/easy/data/preference/PreferencesHelper;->grantAdFreeReward()V

    .line 916
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->playVideo()V

    if-eqz p1, :cond_0

    .line 918
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/preference/PreferencesHelper;->lastExcludeWatchAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 920
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/player/easy/data/preference/PreferencesHelper;->lastWatchAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 922
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchAdRewardLoading:Z

    return-void
.end method

.method private static final processRewardAd$lambda$1$1(Landroidx/appcompat/app/AlertDialog;Lcom/player/easy/player/ExoPlayerActivity;Landroid/view/View;)V
    .locals 0

    .line 926
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 927
    invoke-direct {p1}, Lcom/player/easy/player/ExoPlayerActivity;->playVideo()V

    const/4 p0, 0x0

    .line 928
    iput-boolean p0, p1, Lcom/player/easy/player/ExoPlayerActivity;->watchAdRewardLoading:Z

    return-void
.end method

.method private final registerMediaSession()V
    .locals 3

    .line 1467
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->unRegisterMediaSession()V

    .line 1474
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/player/easy/player/ExoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    .line 1471
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1479
    new-instance v1, Landroidx/media3/session/MediaSession$Builder;

    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v2, :cond_0

    const-string v2, "player"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v1, p0, v2}, Landroidx/media3/session/MediaSession$Builder;-><init>(Landroid/content/Context;Landroidx/media3/common/Player;)V

    .line 1480
    invoke-virtual {v1, v0}, Landroidx/media3/session/MediaSession$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroidx/media3/session/MediaSession$Builder;

    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$Builder;->build()Landroidx/media3/session/MediaSession;

    move-result-object v0

    .line 1478
    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->mediaSession:Landroidx/media3/session/MediaSession;

    return-void
.end method

.method private final releaseAdsLoader()V
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    if-eqz v0, :cond_1

    .line 1459
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->release()V

    const/4 v0, 0x0

    .line 1460
    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    .line 1461
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v1, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getOverlayFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    return-void
.end method

.method private final releasePlayer()V
    .locals 2

    .line 1685
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->updateStartPosition()V

    .line 1686
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 1687
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_1

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 1688
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->unRegisterMediaSession()V

    .line 1689
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_2
    const/4 v0, 0x1

    .line 1690
    iput-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->hostReachable:Z

    const/4 v0, 0x0

    .line 1691
    iput v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->numOfFailedHttpResponse:I

    return-void
.end method

.method private final savePos()V
    .locals 7

    .line 1671
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-string v1, "player"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 1672
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "<get-preferences>(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2035
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1672
    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "animeTitle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->episodeTitle:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method private final setCustomBrightnessValue(F)V
    .locals 2

    .line 965
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final setForwardBackwardSkipAmount(I)V
    .locals 4

    .line 1279
    sget v0, Lcom/player/easy/R$id;->skip_ffwd_amount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/player/easy/R$id;->skip_rew_amount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2017
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1280
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setProgressLoading(Landroid/widget/TextView;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1852
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const-string v1, "getCompoundDrawables(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 1853
    instance-of v1, p2, Landroid/graphics/drawable/Animatable;

    if-nez v1, :cond_1

    .line 1854
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "getContext(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/player/easy/player/ExoPlayerActivity;->getProgressBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    const/16 v2, 0x80

    .line 1855
    invoke-static {v1, v2}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1856
    :cond_0
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1858
    :cond_1
    instance-of p1, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_3
    return-void

    .line 1860
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v1, Lcom/player/easy/R$drawable;->ic_decompress_vector:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1861
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setProgressLoading(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1839
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1840
    instance-of v1, p2, Landroid/graphics/drawable/Animatable;

    if-nez v1, :cond_0

    .line 1841
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "getContext(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/player/easy/player/ExoPlayerActivity;->getProgressBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1842
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1844
    :cond_0
    instance-of p1, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_2
    return-void

    .line 1846
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final shouldShowControllerIndefinitely()Z
    .locals 5

    .line 1537
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1541
    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    .line 1542
    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    iget-object v2, v2, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v2}, Landroidx/media3/ui/PlayerView;->getControllerAutoShow()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1543
    iget-object v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-string v4, "player"

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    .line 1546
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    invoke-interface {v3}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private final shouldShowVideoAd(Lcom/player/easy/data/VideoAdConfig;)Z
    .locals 7

    .line 1345
    invoke-virtual {p1}, Lcom/player/easy/data/VideoAdConfig;->getAd_enable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1347
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/player/easy/data/preference/PreferencesHelper;->lastShowingVideoAd()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v2

    invoke-interface {v2}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1348
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/player/easy/data/VideoAdConfig;->getShow_ad_in_span_of()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final showController(Z)V
    .locals 4

    .line 1550
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getUseController()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1553
    :cond_1
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getControllerShowTimeoutMs()I

    move-result v0

    .line 1554
    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    iget-object v3, v3, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {v3, v0}, Landroidx/media3/ui/PlayerView;->setControllerShowTimeoutMs(I)V

    .line 1556
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->showController()V

    return-void
.end method

.method private final showDownloadDialog()V
    .locals 5

    .line 1119
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "downloadSelection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1121
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1123
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1;

    invoke-direct {v1, p0, v2}, Lcom/player/easy/player/ExoPlayerActivity$showDownloadDialog$1;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->launchIO(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 1122
    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->downloadJob:Lkotlinx/coroutines/Job;

    return-void

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    return-void

    .line 1158
    :cond_3
    iput-boolean v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->pressQualitySpeedDownload:Z

    .line 1159
    new-instance v1, Lcom/player/easy/player/DownloadBottomSheet;

    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-string v4, "player"

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-interface {v3}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v3

    invoke-direct {v1, p0, v0, v3}, Lcom/player/easy/player/DownloadBottomSheet;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/util/List;Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1160
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    invoke-interface {v2}, Landroidx/media3/common/Player;->pause()V

    return-void
.end method

.method private final showQualityDialog()V
    .locals 6

    .line 985
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 986
    :cond_0
    new-instance v1, Lcom/player/easy/player/QualityBottomSheet;

    iget v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v4, 0x0

    const-string v5, "player"

    if-nez v3, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_1
    invoke-interface {v3}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/player/easy/player/QualityBottomSheet;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/util/List;IZ)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 987
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    invoke-interface {v4}, Landroidx/media3/common/Player;->pause()V

    return-void
.end method

.method private final showSpeedDialog()V
    .locals 6

    .line 969
    new-instance v0, Lcom/player/easy/player/SpeedBottomSheet;

    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getSpeedLabels()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedSpeed:I

    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v4, 0x0

    const-string v5, "player"

    if-nez v3, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-interface {v3}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/player/easy/player/SpeedBottomSheet;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Ljava/util/List;IZ)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 970
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    invoke-interface {v4}, Landroidx/media3/common/Player;->pause()V

    return-void
.end method

.method private final showWatchOrDownloadChoiceDialog()V
    .locals 5

    .line 1009
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/player/easy/R$layout;->dialog_watch_or_download:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1010
    sget v1, Lcom/player/easy/R$id;->btn_watch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 1011
    sget v2, Lcom/player/easy/R$id;->btn_download:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 1012
    sget v3, Lcom/player/easy/R$id;->dont_show_again:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1021
    new-instance v4, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v4, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 1022
    invoke-virtual {v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const/4 v4, 0x1

    .line 1023
    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const-string v4, "create(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    new-instance v4, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda5;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1032
    new-instance v4, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0, v3}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda6;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0, v3}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda7;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showWatchOrDownloadChoiceDialog$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 1028
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchDownloadDialogDismissed:Z

    .line 1029
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    const-string p0, "player"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->play()V

    return-void
.end method

.method private static final showWatchOrDownloadChoiceDialog$lambda$1(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/view/View;)V
    .locals 0

    .line 1033
    invoke-static {p2, p0}, Lcom/player/easy/player/ExoPlayerActivity;->showWatchOrDownloadChoiceDialog$persistDontShow(Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/player/easy/player/ExoPlayerActivity;)V

    const/4 p2, 0x1

    .line 1034
    iput-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchDownloadDialogDismissed:Z

    .line 1035
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1036
    iget-object p0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p0, :cond_0

    const-string p0, "player"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->play()V

    return-void
.end method

.method private static final showWatchOrDownloadChoiceDialog$lambda$2(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/appcompat/app/AlertDialog;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/view/View;)V
    .locals 0

    .line 1040
    invoke-static {p2, p0}, Lcom/player/easy/player/ExoPlayerActivity;->showWatchOrDownloadChoiceDialog$persistDontShow(Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/player/easy/player/ExoPlayerActivity;)V

    const/4 p2, 0x1

    .line 1041
    iput-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchDownloadDialogDismissed:Z

    .line 1042
    iput-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->finishAfterDownload:Z

    .line 1043
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1044
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->handleDownloadClick()V

    return-void
.end method

.method private static final showWatchOrDownloadChoiceDialog$persistDontShow(Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/player/easy/player/ExoPlayerActivity;)V
    .locals 7

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1016
    invoke-direct {p1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/player/easy/data/preference/PreferencesHelper;->showWatchOrDownloadDialog()Lcom/tfcporciuncula/flow/Preference;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    .line 1017
    sget v2, Lcom/player/easy/R$string;->watch_or_download_reenable_hint:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method private static final speedLabels_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)Ljava/util/List;
    .locals 9

    .line 221
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 223
    sget v1, Lcom/player/easy/R$string;->speed_0_5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 224
    sget v2, Lcom/player/easy/R$string;->speed_0_75:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 225
    sget v3, Lcom/player/easy/R$string;->speed_1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 226
    sget v4, Lcom/player/easy/R$string;->speed_1_25:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 227
    sget v5, Lcom/player/easy/R$string;->speed_1_5:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 228
    sget v6, Lcom/player/easy/R$string;->speed_2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    const/4 v1, 0x5

    aput-object v6, v7, v1

    .line 222
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2066
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 230
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1215
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/player/easy/data/preference/PreferencesHelper;->defaultDownloader()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1216
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getViewModel()Lcom/player/easy/player/ExoViewModel;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/player/easy/player/ExoViewModel;->isFileExistAlready(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 1217
    const-string v1, "\u0627\u0644\u0645\u0644\u0641 \u0645\u0648\u062c\u0648\u062f \u0645\u0633\u0628\u0642\u0627"

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 1218
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->finishAfterDownload:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1221
    :cond_0
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "<get-preferences>(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2009
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1221
    iget-wide v6, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipFrom:J

    iget-wide v8, p0, Lcom/player/easy/player/ExoPlayerActivity;->skipTo:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2014
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1222
    new-instance v5, Lcom/tonyodev/fetch2/Request;

    sget-object v6, Lcom/player/easy/util/Utils;->INSTANCE:Lcom/player/easy/util/Utils;

    invoke-virtual {v6, p0, p1}, Lcom/player/easy/util/Utils;->getDestinationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v5, p2, v0}, Lcom/tonyodev/fetch2/Request;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p3, :cond_1

    .line 1224
    const-string v0, "User-Agent"

    invoke-virtual {v5, v0, p3}, Lcom/tonyodev/fetch2/RequestInfo;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_1
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getDownloadManager()Lcom/player/easy/data/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/player/easy/data/download/DownloadManager;->queueDownload(Lcom/tonyodev/fetch2/Request;Z)V

    goto :goto_0

    .line 1229
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-le v4, v5, :cond_3

    const/16 v5, 0x1d

    if-gt v4, v5, :cond_4

    .line 1230
    :cond_3
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 1233
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v4}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 1237
    :cond_4
    sget-object v4, Lcom/player/easy/player/DownloadUtil;->INSTANCE:Lcom/player/easy/player/DownloadUtil;

    invoke-virtual {v4, p0, p2, p1, p3}, Lcom/player/easy/player/DownloadUtil;->download(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :goto_0
    sget v1, Lcom/player/easy/R$string;->downloading:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 1240
    iget-boolean v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->finishAfterDownload:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method static synthetic startDownload$default(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1214
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/player/easy/player/ExoPlayerActivity;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final unRegisterMediaSession()V
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->mediaSession:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 1487
    iput-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->mediaSession:Landroidx/media3/session/MediaSession;

    return-void
.end method

.method private final updateControllerVisibility()V
    .locals 1

    .line 1510
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->hideController()V

    return-void

    .line 1513
    :cond_1
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->maybeShowController()V

    return-void
.end method

.method private final updateStartPosition()V
    .locals 4

    .line 1695
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_2

    .line 1696
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    .line 1697
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    const-string v2, "player"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v0

    iput v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startItemIndex:I

    .line 1698
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startPosition:J

    :cond_2
    return-void
.end method

.method private static final viewModel_delegate$lambda$0(Lcom/player/easy/player/ExoPlayerActivity;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 259
    new-instance v0, Lcom/player/easy/player/ExoViewModel$ViewModelFactory;

    invoke-direct {v0, p0}, Lcom/player/easy/player/ExoViewModel$ViewModelFactory;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    return-object v0
.end method


# virtual methods
.method public final changeQuality(Lcom/player/easy/player/Quality;I)V
    .locals 5

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1183
    iput p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    .line 1184
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->trackSelection:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "trackSelection"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/player/easy/R$string;->label_quality:I

    invoke-virtual {p1}, Lcom/player/easy/player/Quality;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-string p2, "player"

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-interface {p1}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v1

    .line 1186
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 1187
    iget-object v3, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v3, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_2
    invoke-interface {v3, p1}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 1188
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    invoke-interface {p1, v1, v2}, Landroidx/media3/common/Player;->seekTo(J)V

    .line 1189
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->prepare()V

    return-void
.end method

.method public final changeSpeed(I)V
    .locals 9

    .line 974
    iput p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedSpeed:I

    .line 975
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->speedValues:[Ljava/lang/Float;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(F)V

    .line 976
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 977
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->speedSelection:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "speedSelection"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 978
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 979
    sget v1, Lcom/player/easy/R$string;->label_speed:I

    .line 980
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getSpeedLabels()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    sget p1, Lcom/player/easy/R$string;->normal:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 978
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 977
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final downloadQuality(Lcom/player/easy/player/Quality;I)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "quality"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    iget-object v1, v0, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "animeTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v3, v0, Lcom/player/easy/player/ExoPlayerActivity;->episodeTitle:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1195
    new-instance v3, Lkotlin/text/Regex;

    .line 1196
    const-string v4, "[^a-zA-Z0-9_]+"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v1, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 1197
    const-string v6, "____"

    const-string v7, "_"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 1198
    const-string v12, "___"

    const-string v13, "_"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 1199
    const-string v4, "__"

    const-string v5, "_"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-virtual {v2}, Lcom/player/easy/player/Quality;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "\u0645\u0646\u062e\u0641\u0636\u0629 \u062c\u062f\u0627"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1206
    :cond_1
    const-string v3, "_240"

    goto :goto_1

    .line 1201
    :sswitch_1
    const-string v4, "\u0639\u0627\u0644\u064a\u0629"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1203
    :cond_2
    const-string v3, "_720"

    goto :goto_1

    .line 1201
    :sswitch_2
    const-string v4, "\u0639\u0627\u0644\u064a\u0629 \u062c\u062f\u0627"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1202
    :cond_3
    const-string v3, "_1080"

    goto :goto_1

    .line 1201
    :sswitch_3
    const-string v4, "\u0645\u0646\u062e\u0641\u0636\u0629"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 1205
    :cond_4
    const-string v3, "_360"

    goto :goto_1

    .line 1201
    :sswitch_4
    const-string v4, "\u0645\u062a\u0648\u0633\u0637\u0629"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1204
    :cond_5
    const-string v3, "_480"

    goto :goto_1

    .line 1201
    :sswitch_5
    const-string v4, "\u0645\u0646\u062e\u0641\u0636\u0629 \u062c\u062f\u0627 \u062c\u062f\u0627"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1208
    :goto_0
    const-string v3, ""

    goto :goto_1

    .line 1207
    :cond_6
    const-string v3, "_144"

    .line 1210
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1211
    invoke-virtual {v2}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/player/easy/player/ExoPlayerActivity;->startDownload$default(Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xa7a04af -> :sswitch_5
        0xca1ff02 -> :sswitch_4
        0xe20f3e7 -> :sswitch_3
        0x3d0caef9 -> :sswitch_2
        0x5a948495 -> :sswitch_1
        0x6b4d254b -> :sswitch_0
    .end sparse-switch
.end method

.method public final getCookies()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    const-string v0, "_display_name"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1788
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 1789
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1790
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    .line 1792
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1793
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-le p2, v3, :cond_0

    .line 1794
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p2, v0

    goto :goto_2

    :cond_0
    move-object p2, v1

    .line 1796
    :goto_1
    :try_start_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1791
    :try_start_3
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, p2

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, p2

    goto :goto_0

    :goto_2
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_1
    move-object v5, p2

    move-object p2, v1

    :goto_3
    const-string p1, "substring(...)"

    if-nez p2, :cond_3

    .line 1799
    :try_start_6
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/16 v5, 0x2f

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1800
    :try_start_7
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p2

    if-eq p2, v3, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 1802
    invoke-virtual {v4, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    move-object v1, p2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p1, v0

    move-object v1, v4

    goto :goto_5

    :cond_4
    move-object v1, v4

    .line 1805
    :goto_4
    :try_start_8
    const-string v2, "."

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_5

    const-string v2, "."

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    return-object p2

    :cond_5
    return-object v1

    .line 1807
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->json$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final getNetworkHelper()Lcom/player/easy/network/NetworkHelper;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->networkHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/network/NetworkHelper;

    return-object v0
.end method

.method public final getNumOfFailedHttpResponse()I
    .locals 1

    .line 1585
    iget v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->numOfFailedHttpResponse:I

    return v0
.end method

.method public final hideSystemUi()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/player/easy/databinding/ActivityPlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x1307

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onAudioAttributesChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public final onBottomSheetDialogDismiss(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1266
    iput-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->pressQualitySpeedDownload:Z

    if-eqz p1, :cond_2

    .line 1267
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x0

    const-string v1, "player"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-interface {p1}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1268
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->play()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v8, 0x1

    .line 285
    invoke-virtual {v1, v8}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 286
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 290
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/player/easy/databinding/ActivityPlayerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object v0

    const-string v3, "inflate(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const-string v9, "binding"

    if-nez v0, :cond_0

    .line 293
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/player/easy/databinding/ActivityPlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 295
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    .line 297
    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$onCreate$1;

    invoke-direct {v3, v1}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$1;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    .line 295
    invoke-virtual {v0, v1, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    if-nez v2, :cond_1

    .line 312
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getViewModel()Lcom/player/easy/player/ExoViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/player/ExoViewModel;->getDownloads()V

    .line 315
    :cond_1
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda17;-><init>()V

    .line 316
    invoke-static {v3}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->remoteConfigSettings(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v3

    .line 319
    invoke-virtual {v0, v3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    .line 321
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->activate()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda23;

    invoke-direct {v4}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 328
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetch()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda24;

    invoke-direct {v3}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 335
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "from_local"

    const/4 v11, 0x0

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromInternalLocal:Z

    .line 336
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "from_shared_local"

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromSharedLocal:Z

    .line 337
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "from_network"

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    .line 338
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v12, v11

    goto :goto_1

    :cond_3
    :goto_0
    move v12, v8

    :goto_1
    xor-int/lit8 v4, v12, 0x1

    .line 339
    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromInternalLocal:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromChooser:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromSharedLocal:Z

    if-nez v0, :cond_4

    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-nez v0, :cond_4

    move v0, v8

    goto :goto_2

    :cond_4
    move v0, v11

    :goto_2
    iput-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromAsOrDs:Z

    .line 341
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_5
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->adFrame:Landroid/widget/LinearLayout;

    const-string v13, "adFrame"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->adFrame:Landroid/widget/LinearLayout;

    .line 342
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_6

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_6
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->adClose2:Landroid/widget/ImageView;

    const-string v5, "adClose2"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->adClose:Landroid/widget/ImageView;

    .line 344
    new-instance v0, Lcom/player/easy/player/PlayerAdConfig;

    iget-object v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->adFrame:Landroid/widget/LinearLayout;

    if-nez v5, :cond_7

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_7
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v6

    invoke-direct {v0, v1, v5, v6}, Lcom/player/easy/player/PlayerAdConfig;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Lcom/player/easy/data/preference/PreferencesHelper;)V

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    .line 346
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->adClose:Landroid/widget/ImageView;

    if-nez v0, :cond_8

    const-string v0, "adClose"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_8
    new-instance v5, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda25;

    invoke-direct {v5, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda25;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "anime_title"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-boolean v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromInternalLocal:Z

    const-string v6, "playerView"

    const-string v7, ""

    const-string v14, "path"

    move/from16 v16, v5

    if-eqz v16, :cond_e

    .line 351
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_9

    .line 353
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    move-object/from16 v16, v6

    goto :goto_3

    .line 354
    :cond_a
    const-string v7, ","

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 355
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v16, v6

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->skipFrom:J

    .line 356
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->skipTo:J

    :goto_3
    if-eqz v0, :cond_d

    if-nez v3, :cond_b

    goto :goto_5

    .line 362
    :cond_b
    iput-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->internalLocalPath:Ljava/lang/String;

    .line 363
    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    :goto_4
    move-object/from16 v19, v9

    :cond_c
    move-object/from16 v5, v16

    const/16 v6, 0x8

    goto/16 :goto_11

    .line 359
    :cond_d
    :goto_5
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_e
    move-object/from16 v16, v6

    .line 365
    iget-boolean v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromSharedLocal:Z

    if-eqz v5, :cond_11

    .line 366
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "uri_path"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    if-eqz v0, :cond_10

    if-nez v3, :cond_f

    goto :goto_6

    .line 371
    :cond_f
    iput-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->sharedLocalPath:Landroid/net/Uri;

    .line 372
    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    goto :goto_4

    .line 368
    :cond_10
    :goto_6
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 374
    :cond_11
    iget-boolean v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v5, :cond_14

    .line 375
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_13

    if-nez v3, :cond_12

    goto :goto_7

    .line 380
    :cond_12
    iput-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->networkPath:Ljava/lang/String;

    .line 381
    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    goto :goto_4

    .line 377
    :cond_13
    :goto_7
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_14
    if-nez v12, :cond_28

    .line 384
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "default_quality"

    const/4 v14, -0x1

    invoke-virtual {v5, v6, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    .line 386
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "skip_from"

    move-object/from16 v19, v9

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->skipFrom:J

    .line 387
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "skip_to"

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->skipTo:J

    .line 388
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "Cookie"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_15

    goto :goto_8

    :cond_15
    move-object v7, v5

    :goto_8
    iput-object v7, v1, Lcom/player/easy/player/ExoPlayerActivity;->cookies:Ljava/lang/String;

    .line 390
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "headers"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-direct {v1, v5}, Lcom/player/easy/player/ExoPlayerActivity;->parseHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->headers:Ljava/util/Map;

    .line 394
    const-string v6, "verifypeer"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "toLowerCase(...)"

    if-eqz v5, :cond_16

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    const/4 v5, 0x0

    :goto_9
    const-string v8, "false"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->disableTlsVerification:Z

    .line 395
    iget-object v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->headers:Ljava/util/Map;

    .line 1948
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1949
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1950
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v10, v20

    check-cast v10, Ljava/lang/String;

    .line 395
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 1951
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 395
    :cond_18
    iput-object v8, v1, Lcom/player/easy/player/ExoPlayerActivity;->headers:Ljava/util/Map;

    .line 397
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "qualities"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-virtual {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v6

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1955
    invoke-virtual {v6}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    new-instance v7, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v8, Lcom/player/easy/player/Quality;->Companion:Lcom/player/easy/player/Quality$Companion;

    invoke-virtual {v8}, Lcom/player/easy/player/Quality$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v8

    invoke-direct {v7, v8}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v6, v7, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 398
    check-cast v5, Ljava/util/ArrayList;

    if-eqz v3, :cond_27

    if-eqz v0, :cond_27

    if-eqz v5, :cond_27

    .line 400
    iget v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    if-ne v6, v14, :cond_19

    goto/16 :goto_f

    .line 405
    :cond_19
    iput-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->episodeTitle:Ljava/lang/String;

    .line 406
    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    .line 407
    iput-object v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    .line 410
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/player/Quality;

    invoke-virtual {v0}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "webview_indicated"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v0, v11, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    .line 412
    iput-boolean v5, v1, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    .line 413
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1a

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1a
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    move-object/from16 v5, v16

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 1956
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1b

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1b
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerJumpControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v7, "playerJumpControls"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :try_start_0
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1c

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_c

    :cond_1c
    :goto_b
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    const/4 v7, 0x1

    .line 418
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 419
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 423
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 424
    new-instance v7, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda26;

    invoke-direct {v7, v0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda26;-><init>(Landroid/webkit/CookieManager;)V

    invoke-virtual {v0, v7}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 431
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    .line 433
    :goto_c
    sget-object v7, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :goto_d
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1d

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1d
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 438
    sget-object v0, Lcom/player/easy/util/AdBlockerUtil;->Companion:Lcom/player/easy/util/AdBlockerUtil$Companion;

    invoke-virtual {v0}, Lcom/player/easy/util/AdBlockerUtil$Companion;->getInstance()Lcom/player/easy/util/AdBlockerUtil;

    move-result-object v0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v0, v1, v8, v7, v8}, Lcom/player/easy/util/AdBlockerUtil;->initialize$default(Lcom/player/easy/util/AdBlockerUtil;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V

    .line 439
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1e

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1e
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/player/easy/widget/AdBlockerWebView;->setAdBlockerEnabled(Z)V

    .line 440
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1f

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1f
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    .line 441
    new-instance v7, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;

    invoke-direct {v7, v1}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$8;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    .line 440
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 493
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_20

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_20
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    new-instance v7, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda27;

    invoke-direct {v7, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda27;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 523
    const-string v0, "user_agent"

    invoke-static {v3, v0}, Lcom/player/easy/player/ExoPlayerActivity;->onCreate$getFragmentParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v3, :cond_21

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_21
    iget-object v3, v3, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v7, 0x1

    .line 525
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 526
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 528
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 529
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 530
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 531
    invoke-virtual {v3, v11}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    if-eqz v0, :cond_23

    .line 532
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_22

    goto :goto_e

    .line 533
    :cond_22
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 550
    :cond_23
    :goto_e
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_24

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_24
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener;

    invoke-direct {v3, v1}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$VideoEventListener;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    const-string v7, "AndroidBridge"

    invoke-virtual {v0, v3, v7}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_25

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_25
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    iget-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v3, :cond_26

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_26
    iget-object v3, v3, Lcom/player/easy/databinding/ActivityPlayerBinding;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Lcom/player/easy/widget/AdBlockerWebView;->setProgress(Landroid/widget/ProgressBar;)V

    goto :goto_11

    .line 402
    :cond_27
    :goto_f
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_28
    move v7, v8

    move-object/from16 v19, v9

    move-object/from16 v5, v16

    const/16 v6, 0x8

    .line 555
    iput-boolean v7, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromChooser:Z

    .line 556
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v1, v1, v0}, Lcom/player/easy/player/ExoPlayerActivity;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_29
    const/4 v0, 0x0

    .line 557
    :goto_10
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_53

    if-nez v3, :cond_2a

    goto/16 :goto_1a

    .line 562
    :cond_2a
    iput-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->internalLocalPath:Ljava/lang/String;

    .line 563
    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    .line 567
    :goto_11
    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-nez v0, :cond_2b

    if-nez v12, :cond_2c

    :cond_2b
    invoke-static {v1}, Lcom/player/easy/util/system/ContextExtensionsKt;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 568
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 572
    :cond_2c
    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-nez v0, :cond_31

    if-eqz v2, :cond_2d

    .line 574
    const-string v0, "selectedSpeed"

    const/4 v7, 0x2

    invoke-virtual {v2, v0, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->selectedSpeed:I

    .line 575
    const-string v0, "auto_play"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    .line 576
    const-string v0, "item_index"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->startItemIndex:I

    .line 577
    const-string v0, "position"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->startPosition:J

    goto :goto_12

    .line 579
    :cond_2d
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->clearStartPosition()V

    .line 582
    :goto_12
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_2e

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2e
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 582
    invoke-static {v1}, Lcom/player/easy/player/ExoPlayerActivity;->access$getBinding$p(Lcom/player/easy/player/ExoPlayerActivity;)Lcom/player/easy/databinding/ActivityPlayerBinding;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2f
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0, v1}, Lcom/player/easy/player/DoubleTabPlayerView;->setDoubleTabListener(Lcom/player/easy/player/DoubleTabPlayerView$ListenerDoubleTab;)V

    goto :goto_13

    .line 1965
    :cond_30
    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;

    invoke-direct {v2, v0, v1}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$$inlined$doOnAttach$1;-><init>(Landroid/view/View;Lcom/player/easy/player/ExoPlayerActivity;)V

    .line 1964
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 585
    :cond_31
    :goto_13
    sget v0, Lcom/player/easy/R$id;->exo_anime_title:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->animeTitle:Ljava/lang/String;

    if-nez v2, :cond_32

    const-string v2, "animeTitle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    sget v0, Lcom/player/easy/R$id;->exo_episode_title:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 587
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->episodeTitle:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    sget v0, Lcom/player/easy/R$id;->exo_video_finish:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda28;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    sget v0, Lcom/player/easy/R$id;->skip_intro:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 595
    sget v3, Lcom/player/easy/R$color;->md_white_1000:I

    invoke-static {v1, v3}, Lcom/player/easy/util/system/ContextExtensionsKt;->getCompatColor(Landroid/content/Context;I)I

    move-result v3

    .line 596
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 597
    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda29;

    invoke-direct {v3, v1, v2}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda29;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    const-string v3, "apply(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iput-object v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->skipIntro:Lcom/google/android/material/button/MaterialButton;

    .line 606
    sget v0, Lcom/player/easy/R$id;->exo_buffering:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->exoBuffering:Landroid/widget/ProgressBar;

    .line 608
    sget v0, Lcom/player/easy/R$id;->player_quality_button:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->trackSelection:Landroid/widget/TextView;

    .line 610
    sget v0, Lcom/player/easy/R$id;->player_speed_button:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->speedSelection:Landroid/widget/TextView;

    .line 612
    sget v0, Lcom/player/easy/R$id;->player_lock_button_outside:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->playerLockContainer:Landroid/view/ViewGroup;

    .line 614
    sget v0, Lcom/player/easy/R$id;->player_lock_button:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->playerLock:Landroid/widget/TextView;

    .line 616
    sget v0, Lcom/player/easy/R$id;->player_download_button:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    .line 618
    sget v0, Lcom/player/easy/R$id;->player_fast_skip_button:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->fastSkip:Landroid/widget/TextView;

    .line 620
    sget v0, Lcom/player/easy/R$id;->exo_play_pause:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->playPauseButton:Landroid/view/View;

    .line 622
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/RemoteConfigKt;->getRemoteConfig(Lcom/google/firebase/Firebase;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    const-string v2, "watch_download_reward"

    invoke-virtual {v0, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;->asString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "asString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_34

    .line 626
    :try_start_1
    invoke-virtual {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    .line 1976
    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v3, Lcom/player/easy/player/RemoteReward;->Companion:Lcom/player/easy/player/RemoteReward$Companion;

    invoke-virtual {v3}, Lcom/player/easy/player/RemoteReward$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v2, v3, v0}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 626
    move-object v2, v0

    check-cast v2, Lcom/player/easy/player/RemoteReward;

    .line 627
    iput-object v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->downloalRewardRemote:Lcom/player/easy/player/RemoteReward;

    .line 628
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->isAdFreeActive()Z

    move-result v0

    if-nez v0, :cond_33

    .line 629
    iget-object v3, v1, Lcom/player/easy/player/ExoPlayerActivity;->downloadRewardedAd:Landroidx/lifecycle/MutableLiveData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v17, v6

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move/from16 v9, v17

    :try_start_2
    invoke-static/range {v1 .. v7}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd$default(Lcom/player/easy/player/ExoPlayerActivity;Lcom/player/easy/player/RemoteReward;Landroidx/lifecycle/MutableLiveData;ZZILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_14

    :catch_2
    move-exception v0

    move v9, v6

    goto :goto_14

    :cond_33
    move v9, v6

    goto :goto_15

    .line 632
    :goto_14
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    invoke-virtual {v2, v0}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_34
    move v9, v6

    .line 635
    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-eqz v0, :cond_35

    .line 636
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->playWebviewVideo()V

    .line 640
    :cond_35
    :goto_15
    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-nez v0, :cond_4e

    .line 641
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    const-string v0, "downloadSelection"

    if-nez v6, :cond_36

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_36
    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda30;

    invoke-direct {v2, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda30;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    sget v2, Lcom/player/easy/R$id;->player_group:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/Group;

    .line 647
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->playerLockContainer:Landroid/view/ViewGroup;

    if-nez v6, :cond_37

    const-string v3, "playerLockContainer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_37
    invoke-static {v6}, Lcom/player/easy/databinding/PlayerLockButtonBinding;->bind(Landroid/view/View;)Lcom/player/easy/databinding/PlayerLockButtonBinding;

    move-result-object v3

    const-string v4, "bind(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iget-object v3, v3, Lcom/player/easy/databinding/PlayerLockButtonBinding;->lockButtonOutside:Landroid/widget/ImageButton;

    new-instance v4, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda31;

    invoke-direct {v4, v1, v2}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda31;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->playerLock:Landroid/widget/TextView;

    if-nez v6, :cond_38

    const-string v3, "playerLock"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_38
    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda18;

    invoke-direct {v3, v1, v2}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda18;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Landroidx/constraintlayout/widget/Group;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->fastSkip:Landroid/widget/TextView;

    if-nez v6, :cond_39

    const-string v2, "fastSkip"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_39
    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda19;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/player/easy/data/preference/PreferencesHelper;->showBrightnessBar()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 675
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v2

    .line 676
    invoke-virtual {v2}, Lcom/player/easy/data/preference/PreferencesHelper;->customBrightnessValue()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v2

    .line 677
    invoke-interface {v2}, Lcom/tfcporciuncula/flow/Preference;->asFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v7, 0x1

    .line 678
    invoke-static {v2, v7}, Lkotlinx/coroutines/flow/FlowKt;->drop(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 679
    new-instance v3, Lcom/player/easy/player/ExoPlayerActivity$onCreate$18;

    const/4 v7, 0x0

    invoke-direct {v3, v1, v7}, Lcom/player/easy/player/ExoPlayerActivity$onCreate$18;-><init>(Lcom/player/easy/player/ExoPlayerActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 680
    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    goto :goto_16

    :cond_3a
    const/4 v7, 0x0

    .line 683
    :goto_16
    iget-object v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    const-string v3, "trackSelection"

    if-eqz v2, :cond_3f

    .line 684
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->trackSelection:Landroid/widget/TextView;

    if-nez v6, :cond_3b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3c

    const/4 v4, 0x1

    goto :goto_17

    :cond_3c
    move v4, v11

    :goto_17
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 685
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->trackSelection:Landroid/widget/TextView;

    if-nez v6, :cond_3d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 686
    :cond_3d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/player/easy/R$string;->label_quality:I

    iget v10, v1, Lcom/player/easy/player/ExoPlayerActivity;->selectedQuality:I

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/player/easy/player/Quality;

    invoke-virtual {v2}, Lcom/player/easy/player/Quality;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v2, v14, v11

    invoke-virtual {v4, v5, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 685
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->trackSelection:Landroid/widget/TextView;

    if-nez v6, :cond_3e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_3e
    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda20;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 693
    :cond_3f
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->speedSelection:Landroid/widget/TextView;

    const-string v2, "speedSelection"

    if-nez v6, :cond_40

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 694
    :cond_40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 695
    sget v5, Lcom/player/easy/R$string;->label_speed:I

    .line 696
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getSpeedLabels()Ljava/util/List;

    move-result-object v10

    iget v14, v1, Lcom/player/easy/player/ExoPlayerActivity;->selectedSpeed:I

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v20, v10

    check-cast v20, Ljava/lang/String;

    sget v10, Lcom/player/easy/R$string;->normal:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v10, v15, v11

    .line 694
    invoke-virtual {v4, v5, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 693
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->speedSelection:Landroid/widget/TextView;

    if-nez v6, :cond_41

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_41
    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda21;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-boolean v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromInternalLocal:Z

    const-string v4, "skipIntro"

    if-nez v2, :cond_42

    iget-boolean v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromSharedLocal:Z

    if-nez v2, :cond_42

    iget-boolean v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromChooser:Z

    if-eqz v2, :cond_46

    .line 704
    :cond_42
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->skipIntro:Lcom/google/android/material/button/MaterialButton;

    if-nez v6, :cond_43

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 1977
    :cond_43
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->trackSelection:Landroid/widget/TextView;

    if-nez v6, :cond_44

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 1979
    :cond_44
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 706
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1981
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez v6, :cond_45

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 1983
    :cond_45
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :cond_46
    iget-boolean v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v2, :cond_49

    .line 711
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->skipIntro:Lcom/google/android/material/button/MaterialButton;

    if-nez v6, :cond_47

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 1985
    :cond_47
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->trackSelection:Landroid/widget/TextView;

    if-nez v6, :cond_48

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 1987
    :cond_48
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 713
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1989
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_49
    if-nez v12, :cond_4b

    .line 716
    iget-object v2, v1, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/player/easy/player/Quality;

    invoke-virtual {v2}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".m3u8"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 717
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->downloadSelection:Landroid/widget/TextView;

    if-nez v6, :cond_4a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    .line 1991
    :cond_4a
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 720
    :cond_4b
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v6, :cond_4c

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_4c
    iget-object v0, v6, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerSkipFfwdAmount:Landroid/widget/TextView;

    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getForwardRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v6, v1, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v6, :cond_4d

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_4d
    iget-object v0, v6, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerSkipRewAmount:Landroid/widget/TextView;

    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getForwardRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getForwardRewardAmount()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/player/easy/player/ExoPlayerActivity;->setForwardBackwardSkipAmount(I)V

    .line 724
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->onceHideVolumeBrightnessBars()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    invoke-interface {v0}, Lcom/tfcporciuncula/flow/Preference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 725
    sget v2, Lcom/player/easy/R$string;->hide_brightness_volume_bars:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/player/easy/util/system/ContextExtensionsKt;->toast$default(Landroid/content/Context;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/widget/Toast;

    .line 726
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->onceHideVolumeBrightnessBars()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lcom/tfcporciuncula/flow/Preference;->set(Ljava/lang/Object;)V

    goto :goto_18

    :cond_4e
    const/4 v7, 0x0

    .line 730
    :cond_4f
    :goto_18
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->isAdFreeActive()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 731
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "isAdFreeActive: true && adFrame.isVisible = false"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iget-object v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->adFrame:Landroid/widget/LinearLayout;

    if-nez v0, :cond_50

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v7

    goto :goto_19

    :cond_50
    move-object v10, v0

    .line 1993
    :goto_19
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :cond_51
    iget-boolean v0, v1, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-eqz v0, :cond_52

    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->isAdFreeActive()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 736
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->playWebviewVideo()V

    .line 739
    :cond_52
    invoke-direct {v1}, Lcom/player/easy/player/ExoPlayerActivity;->getViewModel()Lcom/player/easy/player/ExoViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/player/ExoViewModel;->getInitAds()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda22;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    new-instance v3, Lcom/player/easy/player/ExoPlayerActivityKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/player/easy/player/ExoPlayerActivityKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 559
    :cond_53
    :goto_1a
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onCues(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onCues(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1324
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "playerAdConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/player/easy/player/PlayerAdConfig;->onDestroy()V

    .line 1325
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1326
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->releaseAdsLoader()V

    .line 1328
    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->customView:Landroid/view/View;

    .line 1329
    iput-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1330
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->webview:Lcom/player/easy/widget/AdBlockerWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_2
    return-void
.end method

.method public synthetic onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onDeviceInfoChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Landroidx/media3/common/Player$Listener;IZ)V

    return-void
.end method

.method public onDoubleTapProgressUp(FFLjava/lang/Boolean;)V
    .locals 11

    .line 1724
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    const-string p2, "binding"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {p1}, Lcom/player/easy/player/DoubleTabPlayerView;->getScreenIsLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    .line 1725
    :cond_1
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getForwardRewardAmount()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 1727
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x2ee

    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    const-string v7, "player"

    const-string v8, "forwardPlayer"

    const-string v9, "rewardPlayer"

    const/16 v10, 0x8

    if-eqz v1, :cond_c

    .line 1729
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_2
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {p3}, Landroidx/media3/ui/PlayerView;->isControllerFullyVisible()Z

    move-result p3

    if-nez p3, :cond_7

    .line 1730
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_3
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_4
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2045
    invoke-virtual {p3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1733
    new-instance p3, Landroidx/transition/Fade;

    invoke-direct {p3}, Landroidx/transition/Fade;-><init>()V

    .line 1734
    invoke-virtual {p3, v4, v5}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 1735
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_5
    iget-object v1, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 1737
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v1, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_6
    invoke-virtual {v1}, Lcom/player/easy/databinding/ActivityPlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 1738
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1739
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1747
    :cond_7
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_8
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2047
    invoke-virtual {p3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1748
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_9
    iget-object p2, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1750
    :goto_0
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p2, :cond_a

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_a
    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide p2

    int-to-long v1, p1

    sub-long/2addr p2, v1

    .line 1751
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_b

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v0, p1

    :goto_1
    invoke-interface {v0, p2, p3}, Landroidx/media3/common/Player;->seekTo(J)V

    return-void

    .line 1753
    :cond_c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 1755
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_d

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_d
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {p3}, Landroidx/media3/ui/PlayerView;->isControllerFullyVisible()Z

    move-result p3

    if-nez p3, :cond_12

    .line 1756
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_e
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_f

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_f
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1759
    new-instance p3, Landroidx/transition/Fade;

    invoke-direct {p3}, Landroidx/transition/Fade;-><init>()V

    .line 1760
    invoke-virtual {p3, v4, v5}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 1761
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v1, :cond_10

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_10
    iget-object v1, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    .line 1763
    iget-object v1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v1, :cond_11

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_11
    invoke-virtual {v1}, Lcom/player/easy/databinding/ActivityPlayerBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 1764
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1765
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1773
    :cond_12
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_13

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_13
    iget-object p3, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->rewardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1774
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_14

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_14
    iget-object p2, p3, Lcom/player/easy/databinding/ActivityPlayerBinding;->forwardPlayer:Landroid/widget/FrameLayout;

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    :goto_2
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p2, :cond_15

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_15
    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide p2

    int-to-long v1, p1

    add-long/2addr p2, v1

    .line 1777
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_16

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_16
    move-object v0, p1

    :goto_3
    invoke-interface {v0, p2, p3}, Landroidx/media3/common/Player;->seekTo(J)V

    :cond_17
    :goto_4
    return-void
.end method

.method public synthetic onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onEvents(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onIsLoadingChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 5

    const-string v0, "binding"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1568
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    iget-object p1, p1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    new-instance v2, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/player/easy/player/ExoPlayerActivity;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1569
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->activityPlayer:Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void

    .line 1573
    :cond_2
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    const-string v2, "player"

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_3
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    .line 1574
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    iget-object p1, p1, Lcom/player/easy/databinding/ActivityPlayerBinding;->activityPlayer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 1577
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->scrubMoving:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->pressQualitySpeedDownload:Z

    if-nez p1, :cond_7

    .line 1579
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->playerAdConfig:Lcom/player/easy/player/PlayerAdConfig;

    if-nez p1, :cond_6

    const-string p1, "playerAdConfig"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, p1

    :goto_1
    invoke-virtual {v1}, Lcom/player/easy/player/PlayerAdConfig;->showAd()V

    :cond_7
    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onLoadingChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMediaItemTransition(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMediaMetadataChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onMetadata(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1302
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 1303
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onPause"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 1306
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->savePos()V

    .line 1307
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->releasePlayer()V

    :cond_0
    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "playPauseButton"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 1497
    :cond_0
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p1, :cond_1

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p1, p1, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2021
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1498
    :cond_2
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->playPauseButton:Landroid/view/View;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 2023
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1499
    iput v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->numOfFailedHttpResponse:I

    return-void

    .line 1494
    :cond_4
    iget-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->playPauseButton:Landroid/view/View;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    const/4 p1, 0x4

    .line 2019
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 12

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    iget v0, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_a

    const/16 v1, 0xbb9

    if-ge v0, v1, :cond_a

    .line 1593
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1594
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, ""

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v6}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    instance-of v3, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v3, :cond_a

    .line 1597
    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v4

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP error occurred "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1598
    iget v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->numOfFailedHttpResponse:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->numOfFailedHttpResponse:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 1601
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v0, :cond_5

    .line 1602
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->networkPath:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "networkPath"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object v9, v2

    goto :goto_1

    :cond_4
    move-object v9, v0

    goto :goto_1

    .line 1604
    :cond_5
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/player/easy/player/Quality;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_3

    move-object v9, v4

    .line 2027
    :goto_1
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1607
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHostReachable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1610
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v6, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;

    const/4 v11, 0x0

    move-object v8, p0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/player/easy/player/ExoPlayerActivity$onPlayerError$1;-><init>(Ljava/lang/String;Lcom/player/easy/player/ExoPlayerActivity;Ljava/lang/String;Landroidx/media3/common/PlaybackException;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v6}, Lcom/player/easy/util/lang/CoroutinesExtensionsKt;->launchIO(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void

    :cond_7
    move-object v8, p0

    .line 1663
    iget-object p1, v8, Lcom/player/easy/player/ExoPlayerActivity;->exoBuffering:Landroid/widget/ProgressBar;

    if-nez p1, :cond_8

    const-string p1, "exoBuffering"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    .line 2028
    :cond_8
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    iget-object p1, v8, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p1, :cond_9

    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v2, p1

    :goto_2
    invoke-interface {v2}, Landroidx/media3/common/Player;->prepare()V

    return-void

    :cond_a
    move-object v8, p0

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlayerErrorChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlayerStateChanged(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPositionDiscontinuity(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/Player$Listener$-CC;->$default$onPositionDiscontinuity(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/media3/common/Player$Listener$-CC;->$default$onRenderedFirstFrame(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onRepeatModeChanged(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1292
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 1293
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-nez v0, :cond_1

    .line 1294
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/player/easy/databinding/ActivityPlayerBinding;->playerView:Lcom/player/easy/player/DoubleTabPlayerView;

    invoke-virtual {v0}, Lcom/player/easy/player/DoubleTabPlayerView;->hideSystemUi()V

    .line 1295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->hostReachable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchAdRewardLoading:Z

    if-nez v0, :cond_1

    .line 1296
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->playVideo()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPersistentState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1335
    iget-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-nez p2, :cond_0

    .line 1336
    iget p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->selectedSpeed:I

    const-string v0, "selectedSpeed"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->updateStartPosition()V

    .line 1338
    iget-boolean p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    const-string v0, "auto_play"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1339
    iget p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->startItemIndex:I

    const-string v0, "item_index"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    iget-wide v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->startPosition:J

    const-string p2, "position"

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onScrubMove(Landroidx/media3/ui/TimeBar;J)V
    .locals 0

    const-string p2, "timeBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1709
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    .line 1710
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p2, :cond_0

    const-string p2, "player"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p2, p1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public onScrubStart(Landroidx/media3/ui/TimeBar;J)V
    .locals 0

    const-string p2, "timeBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1714
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->scrubMoving:Z

    return-void
.end method

.method public onScrubStop(Landroidx/media3/ui/TimeBar;JZ)V
    .locals 0

    const-string p2, "timeBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1718
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->startAutoPlay:Z

    .line 1719
    iget-object p2, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez p2, :cond_0

    const-string p2, "player"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p2, p1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    const/4 p1, 0x0

    .line 1720
    iput-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->scrubMoving:Z

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1285
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 1286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->hostReachable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchAdRewardLoading:Z

    if-nez v0, :cond_0

    .line 1287
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->playVideo()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 1313
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 1314
    iget-boolean v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-nez v0, :cond_0

    .line 1315
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onStop"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    iget-object v0, p0, Lcom/player/easy/player/ExoPlayerActivity;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1317
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->savePos()V

    .line 1318
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->releasePlayer()V

    :cond_0
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Landroidx/media3/common/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/media3/common/Player$Listener$-CC;->$default$onTimelineChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onTracksChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onVideoSizeChanged(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/media3/common/Player$Listener$-CC;->$default$onVolumeChanged(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 958
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 959
    iget-boolean p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-eqz p1, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/player/easy/player/ExoPlayerActivity;->hideSystemUi()V

    :cond_0
    return-void
.end method

.method public final processRewardAd(Lcom/player/easy/player/RemoteReward;Landroidx/lifecycle/MutableLiveData;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/player/easy/player/RemoteReward;",
            "Landroidx/lifecycle/MutableLiveData;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "remoteReward"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rewardAdState"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 782
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 787
    :catch_0
    :goto_1
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getExcludePkg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 790
    :cond_2
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getExcludePkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v3, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v4

    .line 793
    :goto_3
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getOnly_for_links()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_7

    .line 796
    :cond_4
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getOnly_for_links()Ljava/util/List;

    move-result-object v2

    .line 1995
    invoke-static {v2}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_6

    .line 1996
    :cond_5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 797
    iget-boolean v7, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz v7, :cond_8

    .line 798
    iget-object v7, p0, Lcom/player/easy/player/ExoPlayerActivity;->networkPath:Ljava/lang/String;

    if-nez v7, :cond_7

    const-string v7, "networkPath"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_7
    invoke-static {v7, v6, v4, v3, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    goto :goto_5

    .line 799
    :cond_8
    iget-object v7, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    .line 800
    :cond_9
    iget-object v7, p0, Lcom/player/easy/player/ExoPlayerActivity;->qualities:Ljava/util/ArrayList;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/player/easy/player/Quality;

    invoke-virtual {v7}, Lcom/player/easy/player/Quality;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6, v4, v3, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    goto :goto_5

    :cond_a
    :goto_4
    move v6, v5

    :goto_5
    if-eqz v6, :cond_6

    goto :goto_7

    :cond_b
    :goto_6
    move v2, v4

    goto :goto_8

    :cond_c
    :goto_7
    move v2, v5

    :goto_8
    if-eqz v0, :cond_d

    .line 807
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getExcludePkgConfig()Lcom/player/easy/player/RemoteReward;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 808
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getExcludePkgConfig()Lcom/player/easy/player/RemoteReward;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd(Lcom/player/easy/player/RemoteReward;Landroidx/lifecycle/MutableLiveData;ZZ)V

    return-void

    :cond_d
    if-nez v0, :cond_1a

    if-nez v2, :cond_e

    goto/16 :goto_c

    .line 816
    :cond_e
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getAd_type()Lcom/player/easy/player/RemoteRewardAdType;

    move-result-object v0

    sget-object v2, Lcom/player/easy/player/ExoPlayerActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v5, :cond_11

    if-ne v0, v3, :cond_10

    if-eqz p4, :cond_f

    .line 820
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastExcludeWatchAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    goto :goto_9

    :cond_f
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastWatchAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    goto :goto_9

    .line 816
    :cond_10
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_11
    if-eqz p4, :cond_12

    .line 818
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastExcludeDownloadAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    goto :goto_9

    :cond_12
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->getPrefs()Lcom/player/easy/data/preference/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/player/easy/data/preference/PreferencesHelper;->lastDownloadAdShowed()Lcom/tfcporciuncula/flow/Preference;

    move-result-object v0

    .line 827
    :goto_9
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez p3, :cond_13

    iget-boolean p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->fromNetwork:Z

    if-eqz p3, :cond_18

    :cond_13
    invoke-static {v0, p1}, Lcom/player/easy/player/ExoPlayerActivity;->processRewardAd$canShowNewAd(Lcom/tfcporciuncula/flow/Preference;Lcom/player/easy/player/RemoteReward;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 828
    sget-object p3, Lcom/player/easy/BuildVars;->INSTANCE:Lcom/player/easy/BuildVars;

    invoke-virtual {p3}, Lcom/player/easy/BuildVars;->isHuaweiStoreApp()Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getHuawei_enable()Z

    move-result p3

    if-eqz p3, :cond_19

    .line 830
    :cond_14
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getAd_type()Lcom/player/easy/player/RemoteRewardAdType;

    move-result-object p3

    sget-object v0, Lcom/player/easy/player/RemoteRewardAdType;->WATCH:Lcom/player/easy/player/RemoteRewardAdType;

    if-ne p3, v0, :cond_17

    .line 831
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->adFrame:Landroid/widget/LinearLayout;

    if-nez p3, :cond_15

    const-string p3, "adFrame"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_15
    const/16 v0, 0x8

    .line 1998
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 832
    iput-boolean v5, p0, Lcom/player/easy/player/ExoPlayerActivity;->watchAdRewardLoading:Z

    .line 833
    iget-object p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->binding:Lcom/player/easy/databinding/ActivityPlayerBinding;

    if-nez p3, :cond_16

    const-string p3, "binding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_16
    move-object v1, p3

    :goto_a
    iget-object p3, v1, Lcom/player/easy/databinding/ActivityPlayerBinding;->progress:Landroid/widget/ProgressBar;

    const-string v0, "progress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_17
    sget-object p3, Lcom/player/easy/util/result/Result$Loading;->INSTANCE:Lcom/player/easy/util/result/Result$Loading;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 836
    new-instance p3, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p3}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p3

    const-string v0, "build(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Lcom/player/easy/player/RemoteReward;->getReward_unit_id()Ljava/lang/String;

    move-result-object v0

    .line 842
    new-instance v1, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;

    invoke-direct {v1, p2, p4}, Lcom/player/easy/player/ExoPlayerActivity$processRewardAd$1;-><init>(Landroidx/lifecycle/MutableLiveData;Z)V

    .line 837
    invoke-static {p0, v0, p3, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    goto :goto_b

    .line 866
    :cond_18
    iget-boolean p3, p0, Lcom/player/easy/player/ExoPlayerActivity;->shouldUseWebView:Z

    if-eqz p3, :cond_19

    .line 867
    invoke-direct {p0}, Lcom/player/easy/player/ExoPlayerActivity;->playWebviewVideo()V

    .line 871
    :cond_19
    :goto_b
    new-instance p3, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;

    invoke-direct {p3, p1, p0, p4}, Lcom/player/easy/player/ExoPlayerActivity$$ExternalSyntheticLambda9;-><init>(Lcom/player/easy/player/RemoteReward;Lcom/player/easy/player/ExoPlayerActivity;Z)V

    new-instance p1, Lcom/player/easy/player/ExoPlayerActivityKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p1, p3}, Lcom/player/easy/player/ExoPlayerActivityKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p0, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1a
    :goto_c
    return-void
.end method

.method public final setCookies(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->cookies:Ljava/lang/String;

    return-void
.end method

.method public final setNumOfFailedHttpResponse(I)V
    .locals 0

    .line 1585
    iput p1, p0, Lcom/player/easy/player/ExoPlayerActivity;->numOfFailedHttpResponse:I

    return-void
.end method
