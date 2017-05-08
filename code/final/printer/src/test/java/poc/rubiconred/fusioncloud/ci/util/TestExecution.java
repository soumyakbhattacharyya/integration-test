package poc.rubiconred.fusioncloud.ci.util;

import static poc.rubiconred.fusioncloud.ci.util.core.builder.GraphBuilder.Graph;

import java.util.Iterator;
import java.util.List;

import org.junit.Test;

import poc.rubiconred.fusioncloud.ci.util.core.Edge;
import poc.rubiconred.fusioncloud.ci.util.core.Graph;
import poc.rubiconred.fusioncloud.ci.util.core.Vertex;

public class TestExecution {
  @Test
  public void testExecution() {
    Graph graph = getOne();

    // Breadth first search
    // graph.bfs();

    System.out.println();
    System.out.println("-------------------------");

    // Depth first search
    Graph.printGraph(graph);
    // graph.dfs();

    List<Edge> edges = graph.getEdges();
    List<Vertex> verticesForOuterLoop = graph.getVertices();
    List<Vertex> verticesForInnerLoop = graph.getVertices();

    // for (Vertex outer : verticesForOuterLoop) {
    // // find if this vertex can reach other vertices
    // for (Vertex inner : verticesForInnerLoop) {
    // if (!inner.equals(outer)) {
    // boolean canReach = findCycle(outer, inner, edges);
    // }
    // }
    // }

    for (Edge edge : edges) {
      System.out.println(edge);
      Vertex from = edge.getFromVertex();
      Vertex to = edge.getFromVertex();
    }

  }

  private boolean findCycle(Vertex outer, Vertex inner, List<Edge> edges) {

    // find the edge where outer is on from
    for (Edge edge : edges) {
      if (edge.getFromVertex().equals(outer)) {
        System.out.println("outer " + edge);
      }
    }
    // find the edge where inner is on from
    for (Edge edge : edges) {
      if (edge.getFromVertex().equals(inner)) {
        System.out.println("inner " + edge);
      }
    }
    // find if from the edge where inner is from you can reach the edge where outer is from

    return false;
  }

  public static Graph getOne() {
    return Graph().edge().from("a").whichIsTheRoot("a").to("b").weight(10.0).edge().from("b").to("c").weight(10.0).edge().from("c").to("d").weight(10.0).edge().from("c").to("h")
        .weight(10.0).edge().from("d").to("e").weight(10.0).edge().from("e").to("c").weight(10.0).connect().getGraph();
  }
}
